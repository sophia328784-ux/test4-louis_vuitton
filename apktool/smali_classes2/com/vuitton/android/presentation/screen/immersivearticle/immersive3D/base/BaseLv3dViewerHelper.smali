.class public Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;",
        "",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;",
        "scene3DConfiguration",
        "<init>",
        "(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:Landroid/view/Choreographer;

.field public final r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

.field public final s:Lcom/google/android/filament/utils/Manipulator;

.field public final t:Lcom/google/android/filament/TransformManager;

.field public final u:Lcom/google/android/filament/RenderableManager;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->a:Landroid/view/SurfaceView;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

    const-string v0, "shoe"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->c:Ljava/lang/String;

    const-string v0, "gyroscope"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->d:Ljava/lang/String;

    const-string v0, "userControls"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->e:Ljava/lang/String;

    const-string v0, "parentUserControls"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->f:Ljava/lang/String;

    const-string v0, "occlusionMask"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->g:Ljava/lang/String;

    const-string v0, "cardFront"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->h:Ljava/lang/String;

    const-string v0, "cardBack"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->i:Ljava/lang/String;

    const-string v0, "animations"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->j:Ljava/lang/String;

    const-string v0, "emptyCube"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->k:Ljava/lang/String;

    const-string v0, "bgCard"

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->l:Ljava/lang/String;

    sget v0, Lcom/google/android/filament/Filament;->a:I

    const-string v0, "filament-utils-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->q:Landroid/view/Choreographer;

    new-instance v0, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    iget v1, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->y:F

    iget v2, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->z:F

    iget p2, p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->A:F

    iget-wide v3, v0, Lcom/google/android/filament/utils/Manipulator$Builder;->b:J

    invoke-static {v3, v4, v1, v2, p2}, Lcom/google/android/filament/utils/Manipulator;->b(JFFF)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, v1, v3, v4}, Lcom/google/android/filament/utils/Manipulator;->d(IIJ)V

    sget-object p2, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {v0, p2}, Lcom/google/android/filament/utils/Manipulator$Builder;->a(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object v5

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->s:Lcom/google/android/filament/utils/Manipulator;

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object p2, p1, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->t:Lcom/google/android/filament/TransformManager;

    iget-object p1, p1, Lcom/google/android/filament/Engine;->d:Lcom/google/android/filament/RenderableManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->u:Lcom/google/android/filament/RenderableManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 133
    new-instance p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration$DefaultConfiguration;-><init>()V

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;-><init>(Landroid/view/SurfaceView;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;)V

    return-void
.end method

.method public static c(Landroid/view/SurfaceView;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lcom/google/android/filament/ColorGrading$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/ColorGrading$Builder;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->o:F

    iget-wide v3, v0, Lcom/google/android/filament/ColorGrading$Builder;->b:J

    invoke-static {v2, v3, v4}, Lcom/google/android/filament/ColorGrading;->b(FJ)V

    iget v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->p:F

    invoke-static {v0, v3, v4}, Lcom/google/android/filament/ColorGrading;->d(FJ)V

    iget v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->q:F

    iget v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->r:F

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/filament/ColorGrading;->e(FFJ)V

    iget v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->s:F

    invoke-static {v0, v3, v4}, Lcom/google/android/filament/ColorGrading;->c(FJ)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/filament/ColorGrading;->a(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/ColorGrading;

    invoke-direct {v0, v3, v4}, Lcom/google/android/filament/ColorGrading;-><init>(J)V

    new-instance v3, Lcom/google/android/filament/View$BloomOptions;

    invoke-direct {v3}, Lcom/google/android/filament/View$BloomOptions;-><init>()V

    iget-boolean v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->B:Z

    iput-boolean v4, v3, Lcom/google/android/filament/View$BloomOptions;->d:Z

    iget-boolean v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->C:Z

    iput-boolean v4, v3, Lcom/google/android/filament/View$BloomOptions;->c:Z

    iget v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->D:F

    iput v4, v3, Lcom/google/android/filament/View$BloomOptions;->e:F

    iget v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->E:F

    iput v4, v3, Lcom/google/android/filament/View$BloomOptions;->g:F

    iget v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->F:F

    iput v4, v3, Lcom/google/android/filament/View$BloomOptions;->f:F

    iget v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->G:F

    iput v4, v3, Lcom/google/android/filament/View$BloomOptions;->a:F

    sget-object v4, Lcom/google/android/filament/View$AntiAliasing;->FXAA:Lcom/google/android/filament/View$AntiAliasing;

    invoke-virtual {p0, v4}, Lcom/google/android/filament/View;->c(Lcom/google/android/filament/View$AntiAliasing;)V

    new-instance v4, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;

    invoke-direct {v4}, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;->a:Z

    invoke-virtual {p0, v4}, Lcom/google/android/filament/View;->h(Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;)V

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->g(Lcom/google/android/filament/ColorGrading;)V

    invoke-virtual {p0, v3}, Lcom/google/android/filament/View;->e(Lcom/google/android/filament/View$BloomOptions;)V

    iget-wide v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->w:D

    invoke-virtual {v2, v3, v4, v3, v4}, Lcom/google/android/filament/Camera;->g(DD)V

    iget-wide v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->x:D

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/Camera;->h(D)V

    iget p0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->t:F

    iget v0, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->u:F

    iget v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/Scene3DConfiguration;->v:F

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/filament/Camera;->d(FFF)V

    return-void

    :cond_0
    const-string p0, "Couldn\'t create ColorGrading"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)Lcom/google/android/filament/utils/Mat4;
    .locals 8

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object p0, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/filament/utils/Mat4;->e:Lcom/google/android/filament/utils/Mat4$Companion;

    invoke-virtual {p0, p1}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result p1

    const/16 v1, 0x10

    new-array v2, v1, [F

    invoke-virtual {p0, v2, p1}, Lcom/google/android/filament/TransformManager;->d([FI)[F

    array-length p0, v2

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p0

    if-lt p1, v1, :cond_0

    new-instance p1, Lcom/google/android/filament/utils/Mat4;

    new-instance v0, Lcom/google/android/filament/utils/Float4;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p0, v3

    const/16 v4, 0xc

    aget v4, p0, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v1, Lcom/google/android/filament/utils/Float4;

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p0, v3

    const/16 v4, 0x9

    aget v4, p0, v4

    const/16 v5, 0xd

    aget v5, p0, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v2, Lcom/google/android/filament/utils/Float4;

    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x6

    aget v4, p0, v4

    const/16 v5, 0xa

    aget v5, p0, v5

    const/16 v6, 0xe

    aget v6, p0, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    new-instance v3, Lcom/google/android/filament/utils/Float4;

    const/4 v4, 0x3

    aget v4, p0, v4

    const/4 v5, 0x7

    aget v5, p0, v5

    const/16 v6, 0xb

    aget v6, p0, v6

    const/16 v7, 0xf

    aget p0, p0, v7

    invoke-direct {v3, v4, v5, v6, p0}, Lcom/google/android/filament/utils/Float4;-><init>(FFFF)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;)V

    return-object p1

    :cond_0
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/filament/utils/Mat4;->e:Lcom/google/android/filament/utils/Mat4$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/filament/utils/Mat4;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/filament/utils/Mat4;-><init>(Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;Lcom/google/android/filament/utils/Float4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final d(ILcom/google/android/filament/utils/Mat4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/BaseLv3dViewerHelper;->r:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v0, v0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result v2

    iget-object v3, v1, Lcom/google/android/filament/utils/Mat4;->a:Lcom/google/android/filament/utils/Float4;

    iget v4, v3, Lcom/google/android/filament/utils/Float4;->a:F

    iget-object v5, v1, Lcom/google/android/filament/utils/Mat4;->b:Lcom/google/android/filament/utils/Float4;

    iget v6, v5, Lcom/google/android/filament/utils/Float4;->a:F

    iget-object v7, v1, Lcom/google/android/filament/utils/Mat4;->c:Lcom/google/android/filament/utils/Float4;

    iget v8, v7, Lcom/google/android/filament/utils/Float4;->a:F

    iget-object v1, v1, Lcom/google/android/filament/utils/Mat4;->d:Lcom/google/android/filament/utils/Float4;

    iget v9, v1, Lcom/google/android/filament/utils/Float4;->a:F

    iget v10, v3, Lcom/google/android/filament/utils/Float4;->b:F

    iget v11, v5, Lcom/google/android/filament/utils/Float4;->b:F

    iget v12, v7, Lcom/google/android/filament/utils/Float4;->b:F

    iget v13, v1, Lcom/google/android/filament/utils/Float4;->b:F

    iget v14, v3, Lcom/google/android/filament/utils/Float4;->c:F

    iget v15, v5, Lcom/google/android/filament/utils/Float4;->c:F

    move/from16 p0, v4

    iget v4, v7, Lcom/google/android/filament/utils/Float4;->c:F

    move/from16 p1, v4

    iget v4, v1, Lcom/google/android/filament/utils/Float4;->c:F

    iget v3, v3, Lcom/google/android/filament/utils/Float4;->d:F

    iget v5, v5, Lcom/google/android/filament/utils/Float4;->d:F

    iget v7, v7, Lcom/google/android/filament/utils/Float4;->d:F

    iget v1, v1, Lcom/google/android/filament/utils/Float4;->d:F

    move/from16 p2, v1

    const/16 v1, 0x10

    new-array v1, v1, [F

    const/16 v16, 0x0

    aput p0, v1, v16

    const/16 v16, 0x1

    aput v6, v1, v16

    const/4 v6, 0x2

    aput v8, v1, v6

    const/4 v6, 0x3

    aput v9, v1, v6

    const/4 v6, 0x4

    aput v10, v1, v6

    const/4 v6, 0x5

    aput v11, v1, v6

    const/4 v6, 0x6

    aput v12, v1, v6

    const/4 v6, 0x7

    aput v13, v1, v6

    const/16 v6, 0x8

    aput v14, v1, v6

    const/16 v6, 0x9

    aput v15, v1, v6

    const/16 v6, 0xa

    aput p1, v1, v6

    const/16 v6, 0xb

    aput v4, v1, v6

    const/16 v4, 0xc

    aput v3, v1, v4

    const/16 v3, 0xd

    aput v5, v1, v3

    const/16 v3, 0xe

    aput v7, v1, v3

    const/16 v3, 0xf

    aput p2, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/TransformManager;->g([FI)V

    :cond_0
    return-void
.end method
