.class public final Lcom/vuitton/android/presentation/ar/arcore/ArCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;,
        Lcom/vuitton/android/presentation/ar/arcore/ArCore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/arcore/ArCore;",
        "",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/vuitton/android/presentation/ar/filament/Filament;",
        "filament",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Landroid/app/Activity;Lcom/vuitton/android/presentation/ar/filament/Filament;Landroid/view/View;)V",
        "Companion",
        "ActiveBackground",
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


# static fields
.field public static final synthetic z:I


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcom/vuitton/android/presentation/ar/filament/Filament;

.field public final c:Landroid/view/View;

.field public final d:I

.field public e:Lcom/google/android/filament/Texture;

.field public f:Lcom/google/android/filament/Material;

.field public g:Lcom/google/android/filament/MaterialInstance;

.field public h:Lcom/google/android/filament/VertexBuffer;

.field public i:Lcom/google/android/filament/IndexBuffer;

.field public j:Lcom/google/android/filament/Texture;

.field public k:Lcom/google/android/filament/Material;

.field public l:Lcom/google/android/filament/MaterialInstance;

.field public m:Lcom/google/android/filament/VertexBuffer;

.field public n:Lcom/google/android/filament/IndexBuffer;

.field public o:Lcom/google/android/filament/Texture;

.field public p:I

.field public q:I

.field public r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

.field public final s:Lcom/google/ar/core/Session;

.field public final t:Ljava/lang/String;

.field public final u:Landroid/hardware/camera2/CameraManager;

.field public v:J

.field public w:Lcom/google/ar/core/Frame;

.field public x:I

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/ArCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/vuitton/android/presentation/ar/filament/Filament;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->c:Landroid/view/View;

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p2, p3, v0

    const p3, 0x8d65

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iput p2, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d:I

    sget-object p3, Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;->NONE:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    new-instance p3, Lcom/google/ar/core/Session;

    invoke-direct {p3, p1}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/google/ar/core/Session;->getConfig()Lcom/google/ar/core/Config;

    move-result-object v0

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setPlaneFindingMode(Lcom/google/ar/core/Config$PlaneFindingMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$DepthMode;->AUTOMATIC:Lcom/google/ar/core/Config$DepthMode;

    invoke-virtual {p3, v1}, Lcom/google/ar/core/Session;->isDepthModeSupported(Lcom/google/ar/core/Config$DepthMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/ar/core/Config$DepthMode;->DISABLED:Lcom/google/ar/core/Config$DepthMode;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setDepthMode(Lcom/google/ar/core/Config$DepthMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$LightEstimationMode;->ENVIRONMENTAL_HDR:Lcom/google/ar/core/Config$LightEstimationMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setLightEstimationMode(Lcom/google/ar/core/Config$LightEstimationMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setUpdateMode(Lcom/google/ar/core/Config$UpdateMode;)Lcom/google/ar/core/Config;

    invoke-virtual {p3, v0}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    invoke-virtual {p3, p2}, Lcom/google/ar/core/Session;->setCameraTextureName(I)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    invoke-virtual {p3}, Lcom/google/ar/core/Session;->getCameraConfig()Lcom/google/ar/core/CameraConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/ar/core/CameraConfig;->getCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->t:Ljava/lang/String;

    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->u:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static e()Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;
    .locals 12

    new-instance v0, Lcom/vuitton/android/presentation/ar/V2A;

    const/16 v1, 0x8

    new-array v2, v1, [F

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/ar/V2A;-><init>([F)V

    new-instance v2, Lcom/vuitton/android/presentation/ar/V2A;

    new-array v1, v1, [F

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/ar/V2A;-><init>([F)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v4, v6

    sub-float/2addr v7, v5

    move v8, v1

    :goto_1
    int-to-float v9, v8

    div-float/2addr v9, v5

    mul-float v10, v9, v6

    sub-float/2addr v10, v5

    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v8

    invoke-static {v0, v11, v10, v7}, Lcom/vuitton/android/presentation/ar/MatrixKt;->g(Lcom/vuitton/android/presentation/ar/V2A;IFF)V

    invoke-static {v2, v11, v9, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->g(Lcom/vuitton/android/presentation/ar/V2A;IFF)V

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    if-eq v3, v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    new-instance v3, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;

    invoke-direct {v3, v0, v2, v1}, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;-><init>(Lcom/vuitton/android/presentation/ar/V2A;Lcom/vuitton/android/presentation/ar/V2A;[S)V

    return-object v3

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x1s
        0x3s
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->w:Lcom/google/ar/core/Frame;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getTextureIntrinsics()Lcom/google/ar/core/CameraIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/CameraIntrinsics;->getImageDimensions()[I

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a:Landroid/app/Activity;

    if-lt v2, v3, :cond_1

    invoke-virtual {v4}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0xb4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v8, 0x3

    if-ne v2, v8, :cond_2

    const/16 v8, 0x10e

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;-><init>()V

    throw p0

    :cond_3
    move v8, v4

    goto :goto_1

    :cond_4
    const/16 v8, 0x5a

    goto :goto_1

    :cond_5
    move v8, v6

    :goto_1
    iput v8, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->x:I

    iget-object v8, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->u:Landroid/hardware/camera2/CameraManager;

    iget-object v9, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->t:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    if-eq v8, v4, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_6

    aget v4, v0, v6

    aget v0, v0, v7

    goto :goto_2

    :cond_6
    aget v4, v0, v7

    aget v0, v0, v6

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_8

    aget v4, v0, v7

    aget v0, v0, v6

    goto :goto_2

    :cond_8
    aget v4, v0, v6

    aget v0, v0, v7

    :goto_2
    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    int-to-float v0, v3

    int-to-float v5, v1

    div-float v6, v0, v5

    cmpg-float v6, v6, v4

    if-gez v6, :cond_9

    div-float/2addr v0, v4

    invoke-static {v0}, Lkotlin/math/MathKt;->c(F)I

    move-result v1

    goto :goto_3

    :cond_9
    mul-float/2addr v5, v4

    invoke-static {v5}, Lkotlin/math/MathKt;->c(F)I

    move-result v3

    :goto_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_a

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    return-void

    :cond_a
    const-string p0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string p0, "frame"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->n(I)V

    :cond_0
    iget v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->n(I)V

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g:Lcom/google/android/filament/MaterialInstance;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->r(Lcom/google/android/filament/MaterialInstance;)V

    goto :goto_0

    :cond_2
    const-string p0, "flatMaterialInstance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->l:Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->r(Lcom/google/android/filament/MaterialInstance;)V

    goto :goto_1

    :cond_4
    const-string p0, "depthMaterialInstance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->f:Lcom/google/android/filament/Material;

    if-eqz v1, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->q(Lcom/google/android/filament/Material;)V

    goto :goto_2

    :cond_6
    const-string p0, "flatMaterial"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->k:Lcom/google/android/filament/Material;

    if-eqz v1, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->q(Lcom/google/android/filament/Material;)V

    goto :goto_3

    :cond_8
    const-string p0, "depthMaterial"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->h:Lcom/google/android/filament/VertexBuffer;

    if-eqz v1, :cond_b

    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->w(Lcom/google/android/filament/VertexBuffer;)V

    goto :goto_4

    :cond_a
    const-string p0, "flatVertexBuffer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->i:Lcom/google/android/filament/IndexBuffer;

    if-eqz v1, :cond_d

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->p(Lcom/google/android/filament/IndexBuffer;)V

    goto :goto_5

    :cond_c
    const-string p0, "flatIndexBuffer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->m:Lcom/google/android/filament/VertexBuffer;

    if-eqz v1, :cond_f

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->w(Lcom/google/android/filament/VertexBuffer;)V

    goto :goto_6

    :cond_e
    const-string p0, "depthVertexBuffer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_f
    :goto_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->n:Lcom/google/android/filament/IndexBuffer;

    if-eqz v1, :cond_11

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->p(Lcom/google/android/filament/IndexBuffer;)V

    goto :goto_7

    :cond_10
    const-string p0, "depthIndexBuffer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_11
    :goto_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->e:Lcom/google/android/filament/Texture;

    if-eqz v1, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->v(Lcom/google/android/filament/Texture;)V

    goto :goto_8

    :cond_12
    const-string p0, "flatCameraTexture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->j:Lcom/google/android/filament/Texture;

    if-eqz v1, :cond_15

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->v(Lcom/google/android/filament/Texture;)V

    goto :goto_9

    :cond_14
    const-string p0, "depthCameraTexture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->o:Lcom/google/android/filament/Texture;

    if-eqz v1, :cond_17

    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->v(Lcom/google/android/filament/Texture;)V

    goto :goto_a

    :cond_16
    const-string p0, "depthTexture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_17
    :goto_a
    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    if-eqz v1, :cond_18

    invoke-virtual {v0, v1}, Lcom/google/android/filament/EntityManager;->b(I)V

    :cond_18
    iget v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lcom/google/android/filament/EntityManager;->b(I)V

    :cond_19
    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    invoke-virtual {p0}, Lcom/google/ar/core/Session;->close()V

    return-void
.end method

.method public final c(Landroid/media/Image;)V
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/filament/TextureSampler;

    sget-object v2, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object v3, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    sget-object v4, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    new-instance v2, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    iget v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d:I

    int-to-long v3, v3

    iget-wide v5, v2, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v5, v6, v3, v4}, Lcom/google/android/filament/Texture;->d(JJ)V

    sget-object v3, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    sget-object v3, Lcom/google/android/filament/Texture$InternalFormat;->RGB8:Lcom/google/android/filament/Texture$InternalFormat;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v4, v3, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v2, v4}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->j:Lcom/google/android/filament/Texture;

    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a:Landroid/app/Activity;

    const-string v4, "materials/depth.filamat"

    invoke-static {v2, v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v4, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v4}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    iput-object v2, v4, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v5, v4, Lcom/google/android/filament/Material$Builder;->b:I

    iget-object v2, v3, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v4, v2}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->k:Lcom/google/android/filament/Material;

    invoke-virtual {v3}, Lcom/google/android/filament/Material;->b()Lcom/google/android/filament/MaterialInstance;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->j:Lcom/google/android/filament/Texture;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v6, "cameraTexture"

    invoke-virtual {v3, v6, v4, v1}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    new-instance v1, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    iget-wide v6, v1, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v4, v6, v7}, Lcom/google/android/filament/Texture;->h(IJ)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-static {v4, v6, v7}, Lcom/google/android/filament/Texture;->c(IJ)V

    sget-object v4, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v1, v4}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    sget-object v4, Lcom/google/android/filament/Texture$InternalFormat;->RG8:Lcom/google/android/filament/Texture$InternalFormat;

    invoke-virtual {v1, v4}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->o:Lcom/google/android/filament/Texture;

    new-instance v4, Lcom/google/android/filament/TextureSampler;

    invoke-direct {v4}, Lcom/google/android/filament/TextureSampler;-><init>()V

    const-string v6, "depthTexture"

    invoke-virtual {v3, v6, v1, v4}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    sget-object v1, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-static {}, Lcom/vuitton/android/presentation/ar/MatrixKt;->c()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v3, v1, v4}, Lcom/google/android/filament/MaterialInstance;->g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V

    iput-object v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->l:Lcom/google/android/filament/MaterialInstance;

    invoke-static {}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->e()Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;

    move-result-object v1

    iget-object v3, v1, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->c:[S

    iget-object v4, v1, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->a:Lcom/vuitton/android/presentation/ar/V2A;

    new-instance v6, Lcom/google/android/filament/RenderableManager$Builder;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    iget-wide v8, v6, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static {v8, v9}, Lcom/google/android/filament/RenderableManager;->c(J)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/google/android/filament/RenderableManager;->h(JZ)V

    invoke-static {v8, v9, v10}, Lcom/google/android/filament/RenderableManager;->d(JZ)V

    sget-object v11, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    new-instance v12, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v12}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    array-length v13, v4

    div-int/2addr v13, v7

    iget-wide v14, v12, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    invoke-static {v13, v14, v15}, Lcom/google/android/filament/VertexBuffer;->d(IJ)V

    invoke-static {v14, v15}, Lcom/google/android/filament/VertexBuffer;->b(J)V

    sget-object v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v13, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    invoke-virtual {v12, v7, v10, v13, v10}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    sget-object v7, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v14, 0x1

    invoke-virtual {v12, v7, v14, v13, v10}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    invoke-virtual {v12, v2}, Lcom/google/android/filament/VertexBuffer$Builder;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->m:Lcom/google/android/filament/VertexBuffer;

    invoke-static {v4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v7, v10, v2, v4}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->b:Lcom/vuitton/android/presentation/ar/V2A;

    iget-object v1, v1, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    invoke-static {v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v7, v14, v2, v1}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    new-instance v1, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v1}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    array-length v4, v3

    iget-wide v12, v1, Lcom/google/android/filament/IndexBuffer$Builder;->b:J

    invoke-static {v4, v12, v13}, Lcom/google/android/filament/IndexBuffer;->c(IJ)V

    sget-object v4, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4, v12, v13}, Lcom/google/android/filament/IndexBuffer;->a(IJ)V

    invoke-virtual {v1, v2}, Lcom/google/android/filament/IndexBuffer$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->n:Lcom/google/android/filament/IndexBuffer;

    array-length v4, v3

    invoke-static {v4}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v4}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v10, v2, v4}, Lcom/google/android/filament/IndexBuffer;->g(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    invoke-virtual {v11}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->a()I

    move-result v18

    invoke-virtual {v7}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v16

    iget-wide v12, v6, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static/range {v12 .. v18}, Lcom/google/android/filament/RenderableManager;->f(JJJI)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->l:Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v3

    invoke-static {v10, v8, v9, v3, v4}, Lcom/google/android/filament/RenderableManager;->g(IJJ)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v1

    iput v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    invoke-virtual {v6, v2, v1}, Lcom/google/android/filament/RenderableManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    return-void

    :cond_0
    const-string v0, "depthMaterialInstance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v0, "depthCameraTexture"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5
.end method

.method public final d(Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    sget-object v1, Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;->FLAT:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g:Lcom/google/android/filament/MaterialInstance;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v0, v2, v3}, Lcom/google/android/filament/MaterialInstance;->g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    sget-object v2, Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;->DEPTH:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    iget v2, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Scene;->e(I)V

    :cond_1
    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    iget v0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Scene;->b(I)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    return-void

    :cond_2
    const-string p0, "flatMaterialInstance"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lcom/google/ar/core/Frame;Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/presentation/ar/filament/Filament;->f:Lcom/google/android/filament/Camera;

    iget-object v3, v1, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v4, v1, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    iget-object v5, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->w:Lcom/google/ar/core/Frame;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v8, v6

    :goto_0
    move-object/from16 v5, p1

    goto :goto_1

    :cond_0
    move v8, v7

    goto :goto_0

    :goto_1
    iput-object v5, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->w:Lcom/google/ar/core/Frame;

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a()V

    new-instance v8, Lcom/google/android/filament/TextureSampler;

    sget-object v10, Lcom/google/android/filament/TextureSampler$MinFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MinFilter;

    sget-object v11, Lcom/google/android/filament/TextureSampler$MagFilter;->LINEAR:Lcom/google/android/filament/TextureSampler$MagFilter;

    sget-object v12, Lcom/google/android/filament/TextureSampler$WrapMode;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$WrapMode;

    invoke-direct {v8, v10, v11, v12}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$MinFilter;Lcom/google/android/filament/TextureSampler$MagFilter;Lcom/google/android/filament/TextureSampler$WrapMode;)V

    new-instance v10, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v10}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    iget v11, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d:I

    int-to-long v11, v11

    iget-wide v13, v10, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/filament/Texture;->d(JJ)V

    sget-object v11, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_EXTERNAL:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v10, v11}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    sget-object v11, Lcom/google/android/filament/Texture$InternalFormat;->RGB8:Lcom/google/android/filament/Texture$InternalFormat;

    invoke-virtual {v10, v11}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->b:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v11, v11, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v10, v11}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->e:Lcom/google/android/filament/Texture;

    iget-object v10, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a:Landroid/app/Activity;

    const-string v12, "materials/flat.filamat"

    invoke-static {v10, v12}, Lcom/vuitton/android/presentation/ar/MatrixKt;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v12, Lcom/google/android/filament/Material$Builder;

    invoke-direct {v12}, Lcom/google/android/filament/Material$Builder;-><init>()V

    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    iput-object v10, v12, Lcom/google/android/filament/Material$Builder;->a:Ljava/nio/ByteBuffer;

    iput v13, v12, Lcom/google/android/filament/Material$Builder;->b:I

    invoke-virtual {v12, v11}, Lcom/google/android/filament/Material$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Material;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->f:Lcom/google/android/filament/Material;

    invoke-virtual {v10}, Lcom/google/android/filament/Material;->b()Lcom/google/android/filament/MaterialInstance;

    move-result-object v10

    iget-object v12, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->e:Lcom/google/android/filament/Texture;

    if-eqz v12, :cond_3

    const-string v13, "cameraTexture"

    invoke-virtual {v10, v13, v12, v8}, Lcom/google/android/filament/MaterialInstance;->i(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    sget-object v8, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-static {}, Lcom/vuitton/android/presentation/ar/MatrixKt;->c()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v10, v8, v12}, Lcom/google/android/filament/MaterialInstance;->g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V

    iput-object v10, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g:Lcom/google/android/filament/MaterialInstance;

    invoke-static {}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->e()Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;

    move-result-object v10

    iget-object v12, v10, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->c:[S

    iget-object v13, v10, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->a:Lcom/vuitton/android/presentation/ar/V2A;

    new-instance v14, Lcom/google/android/filament/RenderableManager$Builder;

    invoke-direct {v14, v6}, Lcom/google/android/filament/RenderableManager$Builder;-><init>(I)V

    move-object/from16 v16, v10

    const/4 v15, 0x0

    iget-wide v9, v14, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    invoke-static {v9, v10}, Lcom/google/android/filament/RenderableManager;->c(J)V

    invoke-static {v9, v10, v7}, Lcom/google/android/filament/RenderableManager;->h(JZ)V

    invoke-static {v9, v10, v7}, Lcom/google/android/filament/RenderableManager;->d(JZ)V

    sget-object v17, Lcom/google/android/filament/RenderableManager$PrimitiveType;->TRIANGLES:Lcom/google/android/filament/RenderableManager$PrimitiveType;

    move-object/from16 v18, v15

    new-instance v15, Lcom/google/android/filament/VertexBuffer$Builder;

    invoke-direct {v15}, Lcom/google/android/filament/VertexBuffer$Builder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    array-length v6, v13

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v20, v8

    iget-wide v7, v15, Lcom/google/android/filament/VertexBuffer$Builder;->b:J

    invoke-static {v6, v7, v8}, Lcom/google/android/filament/VertexBuffer;->d(IJ)V

    invoke-static {v7, v8}, Lcom/google/android/filament/VertexBuffer;->b(J)V

    sget-object v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->POSITION:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    sget-object v7, Lcom/google/android/filament/VertexBuffer$AttributeType;->FLOAT2:Lcom/google/android/filament/VertexBuffer$AttributeType;

    const/4 v8, 0x0

    invoke-virtual {v15, v6, v8, v7, v8}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    sget-object v6, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->UV0:Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    const/4 v5, 0x1

    invoke-virtual {v15, v6, v5, v7, v8}, Lcom/google/android/filament/VertexBuffer$Builder;->a(Lcom/google/android/filament/VertexBuffer$VertexAttribute;ILcom/google/android/filament/VertexBuffer$AttributeType;I)V

    invoke-virtual {v15, v11}, Lcom/google/android/filament/VertexBuffer$Builder;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->h:Lcom/google/android/filament/VertexBuffer;

    invoke-static {v13}, Lcom/vuitton/android/presentation/ar/MatrixKt;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v6, v8, v11, v7}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    move-object/from16 v7, v16

    iget-object v7, v7, Lcom/vuitton/android/presentation/ar/arcore/ModelBuffers;->b:Lcom/vuitton/android/presentation/ar/V2A;

    iget-object v7, v7, Lcom/vuitton/android/presentation/ar/V2A;->a:[F

    invoke-static {v7}, Lcom/vuitton/android/presentation/ar/MatrixKt;->i([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v6, v5, v11, v7}, Lcom/google/android/filament/VertexBuffer;->h(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    new-instance v5, Lcom/google/android/filament/IndexBuffer$Builder;

    invoke-direct {v5}, Lcom/google/android/filament/IndexBuffer$Builder;-><init>()V

    array-length v7, v12

    move-object v8, v2

    iget-wide v1, v5, Lcom/google/android/filament/IndexBuffer$Builder;->b:J

    invoke-static {v7, v1, v2}, Lcom/google/android/filament/IndexBuffer;->c(IJ)V

    sget-object v7, Lcom/google/android/filament/IndexBuffer$Builder$IndexType;->USHORT:Lcom/google/android/filament/IndexBuffer$Builder$IndexType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v7, v1, v2}, Lcom/google/android/filament/IndexBuffer;->a(IJ)V

    invoke-virtual {v5, v11}, Lcom/google/android/filament/IndexBuffer$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->i:Lcom/google/android/filament/IndexBuffer;

    array-length v2, v12

    invoke-static {v2}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v11, v2}, Lcom/google/android/filament/IndexBuffer;->g(ILcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/filament/RenderableManager$PrimitiveType;->a()I

    move-result v27

    invoke-virtual {v6}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v23

    invoke-virtual {v1}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v25

    iget-wide v1, v14, Lcom/google/android/filament/RenderableManager$Builder;->b:J

    move-wide/from16 v21, v1

    invoke-static/range {v21 .. v27}, Lcom/google/android/filament/RenderableManager;->f(JJJI)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g:Lcom/google/android/filament/MaterialInstance;

    const-string v2, "flatMaterialInstance"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v6

    invoke-static {v5, v9, v10, v6, v7}, Lcom/google/android/filament/RenderableManager;->g(IJJ)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v1

    iput v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    invoke-virtual {v14, v11, v1}, Lcom/google/android/filament/RenderableManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g:Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    move-object/from16 v5, v20

    invoke-virtual {v1, v5, v2}, Lcom/google/android/filament/MaterialInstance;->g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V

    iget v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    invoke-virtual {v4, v1}, Lcom/google/android/filament/Scene;->b(I)V

    sget-object v1, Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;->FLAT:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    iput-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    goto :goto_2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v18

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v18

    :cond_3
    const/16 v18, 0x0

    const-string v0, "flatCameraTexture"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v18

    :cond_4
    move-object v8, v2

    const/16 v18, 0x0

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->s:Lcom/google/ar/core/Session;

    sget-object v2, Lcom/google/ar/core/Config$DepthMode;->AUTOMATIC:Lcom/google/ar/core/Config$DepthMode;

    invoke-virtual {v1, v2}, Lcom/google/ar/core/Session;->isDepthModeSupported(Lcom/google/ar/core/Config$DepthMode;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->y:Z

    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ar/core/Frame;->acquireDepthImage16Bits()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->y:Z

    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->o:Lcom/google/android/filament/Texture;

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->c(Landroid/media/Image;)V

    goto :goto_3

    :catchall_0
    move-object/from16 v1, p2

    goto :goto_5

    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->o:Lcom/google/android/filament/Texture;

    if-eqz v2, :cond_8

    new-instance v20, Lcom/google/android/filament/Texture$PixelBufferDescriptor;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/16 v19, 0x0

    aget-object v5, v5, v19

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    sget-object v22, Lcom/google/android/filament/Texture$Format;->RG:Lcom/google/android/filament/Texture$Format;

    sget-object v23, Lcom/google/android/filament/Texture$Type;->UBYTE:Lcom/google/android/filament/Texture$Type;

    new-instance v28, Landroid/os/Handler;

    invoke-direct/range {v28 .. v28}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lz1;

    const/4 v6, 0x5

    invoke-direct {v5, v1, v6}, Lz1;-><init>(Ljava/lang/Object;I)V

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v29, v5

    invoke-direct/range {v20 .. v29}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;IIIILjava/lang/Object;Ljava/lang/Runnable;)V

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$PixelBufferDescriptor;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    sget-object v2, Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;->DEPTH:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    if-eq v1, v2, :cond_6

    iget-object v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->l:Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_7

    sget-object v5, Lcom/google/android/filament/MaterialInstance$FloatElement;->FLOAT4:Lcom/google/android/filament/MaterialInstance$FloatElement;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->g()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v1, v5, v6}, Lcom/google/android/filament/MaterialInstance;->g(Lcom/google/android/filament/MaterialInstance$FloatElement;[F)V

    iget v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->q:I

    invoke-virtual {v4, v1}, Lcom/google/android/filament/Scene;->e(I)V

    iget v1, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    invoke-virtual {v4, v1}, Lcom/google/android/filament/Scene;->b(I)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->r:Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;

    :cond_6
    :goto_4
    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const-string v1, "depthMaterialInstance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v18

    :cond_8
    const-string v1, "depthTexture"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v18

    :cond_9
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p2

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d(Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    :goto_5
    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d(Lcom/vuitton/android/presentation/ar/filament/Filament;)V

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->y:Z

    goto :goto_6

    :cond_b
    move-object/from16 v1, p2

    const/4 v5, 0x0

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->d(Lcom/vuitton/android/presentation/ar/filament/Filament;)V

    :goto_6
    sget-object v1, Lcom/vuitton/android/presentation/ar/MatrixKt;->a:Lcom/vuitton/android/presentation/ar/V3;

    const/16 v1, 0x10

    new-array v2, v1, [F

    invoke-virtual/range {p1 .. p1}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v4

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    new-instance v4, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    iget-object v2, v4, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v2

    new-array v4, v4, [D

    array-length v5, v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_c

    aget v7, v2, v6

    float-to-double v9, v7

    aput-wide v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v8, v4}, Lcom/google/android/filament/Camera;->c([D)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ar/core/Camera;->getDisplayOrientedPose()Lcom/google/ar/core/Pose;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v1, v1, [F

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    new-instance v2, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {v8, v1}, Lcom/google/android/filament/Camera;->f([F)V

    iget-object v2, v3, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    invoke-virtual {v2, v3}, Lcom/google/android/filament/TransformManager;->e(I)Z

    move-result v3

    iget v0, v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->p:I

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result v0

    goto :goto_8

    :cond_d
    invoke-virtual {v2, v0}, Lcom/google/android/filament/TransformManager;->a(I)I

    move-result v0

    :goto_8
    invoke-virtual {v2, v1, v0}, Lcom/google/android/filament/TransformManager;->g([FI)V

    return-void
.end method

.method public final g()Lcom/vuitton/android/presentation/ar/M4;
    .locals 5

    invoke-static {}, Lcom/vuitton/android/presentation/ar/MatrixKt;->c()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->j(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->u:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->t:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget p0, p0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->x:I

    const/16 v3, 0x5a

    const/16 v4, 0x10e

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_1

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/ar/ArException$InvalidDisplayRotationError;-><init>()V

    throw p0

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    add-int/2addr v1, v3

    add-int/2addr v1, v4

    rem-int/lit16 v1, v1, 0x168

    int-to-float p0, v1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, p0, v2, v1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->f(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object p0

    const/high16 v0, -0x41000000    # -0.5f

    invoke-static {p0, v0, v0, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->j(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object p0

    return-object p0
.end method
