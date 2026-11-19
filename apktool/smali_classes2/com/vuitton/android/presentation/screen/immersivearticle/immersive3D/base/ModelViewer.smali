.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$Companion;,
        Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0010\u0011B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B1\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000cB1\u0008\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/google/android/filament/Engine;",
        "engine",
        "Lcom/google/android/filament/android/UiHelper;",
        "uiHelper",
        "<init>",
        "(Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;)V",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "Lcom/google/android/filament/utils/Manipulator;",
        "manipulator",
        "(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V",
        "Landroid/view/TextureView;",
        "textureView",
        "(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V",
        "SurfaceCallback",
        "Companion",
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
.field public static final z:Lcom/google/android/filament/utils/Float3;


# instance fields
.field public final b:Lcom/google/android/filament/Engine;

.field public final c:Lcom/google/android/filament/android/UiHelper;

.field public d:Lcom/google/android/filament/gltfio/FilamentAsset;

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Lcom/google/android/filament/Scene;

.field public final i:Lcom/google/android/filament/View;

.field public final j:Lcom/google/android/filament/Camera;

.field public final k:Lcom/google/android/filament/Renderer;

.field public final l:I

.field public final m:Lcom/google/android/filament/android/DisplayHelper;

.field public final n:Lcom/google/android/filament/utils/Manipulator;

.field public final o:Lcom/google/android/filament/utils/GestureDetector;

.field public final p:Landroid/view/SurfaceView;

.field public final q:Landroid/view/TextureView;

.field public r:Lcom/google/android/filament/SwapChain;

.field public final s:Lcom/google/android/filament/gltfio/AssetLoader;

.field public final t:Lcom/google/android/filament/gltfio/UbershaderProvider;

.field public final u:Lcom/google/android/filament/gltfio/ResourceLoader;

.field public final v:[I

.field public final w:[D

.field public final x:[D

.field public final y:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/google/android/filament/utils/Float3;

    const/4 v1, 0x0

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-direct {v0, v1, v1, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->z:Lcom/google/android/filament/utils/Float3;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    invoke-direct {p0, p2, p3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;)V

    if-nez p4, :cond_0

    .line 179
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 180
    sget-object p4, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->z:Lcom/google/android/filament/utils/Float3;

    iget v0, p4, Lcom/google/android/filament/utils/Float3;->a:F

    .line 181
    iget v1, p4, Lcom/google/android/filament/utils/Float3;->b:F

    .line 182
    iget p4, p4, Lcom/google/android/filament/utils/Float3;->c:F

    .line 183
    iget-wide v2, p2, Lcom/google/android/filament/utils/Manipulator$Builder;->b:J

    invoke-static {v2, v3, v0, v1, p4}, Lcom/google/android/filament/utils/Manipulator;->c(JFFF)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 185
    invoke-static {p4, v0, v2, v3}, Lcom/google/android/filament/utils/Manipulator;->d(IIJ)V

    .line 186
    sget-object p4, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p4}, Lcom/google/android/filament/utils/Manipulator$Builder;->a(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p4

    .line 187
    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->n:Lcom/google/android/filament/utils/Manipulator;

    .line 188
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->p:Landroid/view/SurfaceView;

    .line 189
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    invoke-direct {p2, p1, p4}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->o:Lcom/google/android/filament/utils/GestureDetector;

    .line 190
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->m:Lcom/google/android/filament/android/DisplayHelper;

    .line 191
    new-instance p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V

    .line 192
    iput-object p2, p3, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    .line 193
    invoke-virtual {p3, p1}, Lcom/google/android/filament/android/UiHelper;->a(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 171
    sget p2, Lcom/google/android/filament/Engine;->f:I

    .line 172
    new-instance p2, Lcom/google/android/filament/Engine$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/Engine$Builder;-><init>()V

    .line 173
    iget-wide v1, p2, Lcom/google/android/filament/Engine$Builder;->b:J

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->a(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 174
    new-instance p2, Lcom/google/android/filament/Engine;

    invoke-direct {p2, v1, v2}, Lcom/google/android/filament/Engine;-><init>(J)V

    goto :goto_0

    .line 175
    :cond_0
    const-string p0, "Couldn\'t create Engine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 176
    new-instance p3, Lcom/google/android/filament/android/UiHelper;

    sget-object p6, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p3, p6}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 177
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;-><init>(Landroid/view/SurfaceView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    invoke-direct {p0, p2, p3}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;)V

    if-nez p4, :cond_0

    .line 202
    new-instance p2, Lcom/google/android/filament/utils/Manipulator$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/utils/Manipulator$Builder;-><init>()V

    .line 203
    sget-object p4, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->z:Lcom/google/android/filament/utils/Float3;

    iget v0, p4, Lcom/google/android/filament/utils/Float3;->a:F

    .line 204
    iget v1, p4, Lcom/google/android/filament/utils/Float3;->b:F

    .line 205
    iget p4, p4, Lcom/google/android/filament/utils/Float3;->c:F

    .line 206
    iget-wide v2, p2, Lcom/google/android/filament/utils/Manipulator$Builder;->b:J

    invoke-static {v2, v3, v0, v1, p4}, Lcom/google/android/filament/utils/Manipulator;->c(JFFF)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 208
    invoke-static {p4, v0, v2, v3}, Lcom/google/android/filament/utils/Manipulator;->d(IIJ)V

    .line 209
    sget-object p4, Lcom/google/android/filament/utils/Manipulator$Mode;->ORBIT:Lcom/google/android/filament/utils/Manipulator$Mode;

    invoke-virtual {p2, p4}, Lcom/google/android/filament/utils/Manipulator$Builder;->a(Lcom/google/android/filament/utils/Manipulator$Mode;)Lcom/google/android/filament/utils/Manipulator;

    move-result-object p4

    .line 210
    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->n:Lcom/google/android/filament/utils/Manipulator;

    .line 211
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->q:Landroid/view/TextureView;

    .line 212
    new-instance p2, Lcom/google/android/filament/utils/GestureDetector;

    invoke-direct {p2, p1, p4}, Lcom/google/android/filament/utils/GestureDetector;-><init>(Landroid/view/View;Lcom/google/android/filament/utils/Manipulator;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->o:Lcom/google/android/filament/utils/GestureDetector;

    .line 213
    new-instance p2, Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->m:Lcom/google/android/filament/android/DisplayHelper;

    .line 214
    new-instance p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$SurfaceCallback;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V

    .line 215
    iput-object p2, p3, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    .line 216
    invoke-virtual {p3, p1}, Lcom/google/android/filament/android/UiHelper;->b(Landroid/view/TextureView;)V

    .line 217
    new-instance p2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1;

    invoke-direct {p2, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer$addDetachListener$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;)V

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    .line 194
    sget p2, Lcom/google/android/filament/Engine;->f:I

    .line 195
    new-instance p2, Lcom/google/android/filament/Engine$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/Engine$Builder;-><init>()V

    .line 196
    iget-wide v1, p2, Lcom/google/android/filament/Engine$Builder;->b:J

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->a(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 197
    new-instance p2, Lcom/google/android/filament/Engine;

    invoke-direct {p2, v1, v2}, Lcom/google/android/filament/Engine;-><init>(J)V

    goto :goto_0

    .line 198
    :cond_0
    const-string p0, "Couldn\'t create Engine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 199
    new-instance p3, Lcom/google/android/filament/android/UiHelper;

    sget-object p6, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->DONT_CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p3, p6}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 200
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;-><init>(Landroid/view/TextureView;Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;Lcom/google/android/filament/utils/Manipulator;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/android/UiHelper;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->c:Lcom/google/android/filament/android/UiHelper;

    const/high16 p2, 0x41e00000    # 28.0f

    iput p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->e:F

    const p2, 0x3d4ccccd    # 0.05f

    iput p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->f:F

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->g:F

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->i()Lcom/google/android/filament/Scene;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->k()Lcom/google/android/filament/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    iget-object v2, p1, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/EntityManager;

    invoke-virtual {v2}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/Engine;->f(I)Lcom/google/android/filament/Camera;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    const v4, 0x3c03126f    # 0.008f

    invoke-virtual {v2, v3, v4, p2}, Lcom/google/android/filament/Camera;->d(FFF)V

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->h()Lcom/google/android/filament/Renderer;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    const/16 p2, 0x80

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->v:[I

    const/4 p2, 0x3

    new-array v3, p2, [D

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->w:[D

    new-array v3, p2, [D

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->x:[D

    new-array p2, p2, [D

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->y:[D

    invoke-virtual {v1, v0}, Lcom/google/android/filament/View;->i(Lcom/google/android/filament/Scene;)V

    invoke-virtual {v1, v2}, Lcom/google/android/filament/View;->f(Lcom/google/android/filament/Camera;)V

    new-instance p2, Lcom/google/android/filament/gltfio/UbershaderProvider;

    invoke-direct {p2, p1}, Lcom/google/android/filament/gltfio/UbershaderProvider;-><init>(Lcom/google/android/filament/Engine;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->t:Lcom/google/android/filament/gltfio/UbershaderProvider;

    new-instance v1, Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/filament/gltfio/AssetLoader;-><init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->s:Lcom/google/android/filament/gltfio/AssetLoader;

    new-instance p2, Lcom/google/android/filament/gltfio/ResourceLoader;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;-><init>(Lcom/google/android/filament/Engine;Z)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/filament/EntityManager;->a()I

    move-result p2

    iput p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->l:I

    invoke-static {}, Lcom/google/android/filament/Colors;->a()[F

    move-result-object p0

    const/4 v2, 0x0

    aget v2, p0, v2

    aget v1, p0, v1

    const/4 v3, 0x2

    aget p0, p0, v3

    new-instance v3, Lcom/google/android/filament/LightManager$Builder;

    sget-object v4, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v3, v4}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    iget-wide v4, v3, Lcom/google/android/filament/LightManager$Builder;->b:J

    invoke-static {v4, v5, v2, v1, p0}, Lcom/google/android/filament/LightManager;->c(JFFF)V

    const p0, 0x47c35000    # 100000.0f

    invoke-static {p0, v4, v5}, Lcom/google/android/filament/LightManager;->f(FJ)V

    const/4 p0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v4, v5, p0, v1, p0}, Lcom/google/android/filament/LightManager;->d(JFFF)V

    invoke-static {v4, v5}, Lcom/google/android/filament/LightManager;->b(J)V

    invoke-virtual {v3, p1, p2}, Lcom/google/android/filament/LightManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    invoke-virtual {v0, p2}, Lcom/google/android/filament/Scene;->b(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->c:Lcom/google/android/filament/android/UiHelper;

    invoke-virtual {v0}, Lcom/google/android/filament/android/UiHelper;->d()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->s:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/AssetLoader;->b()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->t:Lcom/google/android/filament/gltfio/UbershaderProvider;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/UbershaderProvider;->b()V

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/UbershaderProvider;->a()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->e()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->l:I

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->n(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->s(Lcom/google/android/filament/Renderer;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->x(Lcom/google/android/filament/View;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->t(Lcom/google/android/filament/Scene;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    iget v2, p0, Lcom/google/android/filament/Camera;->b:I

    invoke-virtual {v0, v2}, Lcom/google/android/filament/Engine;->m(I)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v2

    iget p0, p0, Lcom/google/android/filament/Camera;->b:I

    invoke-virtual {v2, p0}, Lcom/google/android/filament/EntityManager;->b(I)V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/filament/EntityManager;->b(I)V

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->l()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->c()V

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->f()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->a()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Scene;->d([I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->s:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/gltfio/AssetLoader;->c(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    :cond_0
    return-void
.end method

.method public final c(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->s:Lcom/google/android/filament/gltfio/AssetLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/AssetLoader;->a(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->e()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/filament/gltfio/ResourceLoader;->a(Ljava/lang/String;Ljava/nio/Buffer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->b(Lcom/google/android/filament/gltfio/FilamentAsset;)V

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->c()Lcom/google/android/filament/gltfio/FilamentInstance;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/FilamentInstance;->a()Lcom/google/android/filament/gltfio/Animator;

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->h()V

    return-void
.end method

.method public final d(J)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->c:Lcom/google/android/filament/android/UiHelper;

    iget-boolean v1, v1, Lcom/google/android/filament/android/UiHelper;->c:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->u:Lcom/google/android/filament/gltfio/ResourceLoader;

    invoke-virtual {v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->d()V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->d:Lcom/google/android/filament/gltfio/FilamentAsset;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->b:Lcom/google/android/filament/Engine;

    iget-object v4, v4, Lcom/google/android/filament/Engine;->d:Lcom/google/android/filament/RenderableManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :goto_0
    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->v:[I

    invoke-virtual {v1, v6}, Lcom/google/android/filament/gltfio/FilamentAsset;->g([I)I

    move-result v7

    iput v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->h:Lcom/google/android/filament/Scene;

    if-eqz v7, :cond_9

    iget v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    move v9, v3

    :goto_2
    if-ge v9, v7, :cond_2

    aget v10, v6, v9

    invoke-virtual {v4, v10}, Lcom/google/android/filament/RenderableManager;->k(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/google/android/filament/RenderableManager;->n(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    iget v7, v5, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v7, :cond_8

    if-nez v7, :cond_3

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_5

    :cond_3
    array-length v9, v6

    if-lt v7, v9, :cond_4

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->U([I)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_4
    if-ne v7, v2, :cond_5

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v10, v6

    move v11, v3

    move v12, v11

    :goto_3
    if-ge v11, v10, :cond_7

    aget v13, v6, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v12, v2

    if-ne v12, v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    move-object v6, v9

    :goto_5
    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->x0(Ljava/util/Collection;)[I

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/filament/Scene;->a([I)V

    goto :goto_0

    :cond_8
    const-string v0, "Requested element count "

    const-string v1, " is less than zero."

    invoke-static {v7, v0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->d()[I

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/filament/Scene;->a([I)V

    :cond_a
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->n:Lcom/google/android/filament/utils/Manipulator;

    if-eqz v1, :cond_c

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->w:[D

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->x:[D

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->y:[D

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/android/filament/utils/Manipulator;->g([D[D[D)V

    aget-wide v8, v4, v3

    aget-wide v10, v4, v2

    const/4 v1, 0x2

    aget-wide v12, v4, v1

    aget-wide v14, v5, v3

    aget-wide v16, v5, v2

    aget-wide v18, v5, v1

    aget-wide v20, v6, v3

    aget-wide v22, v6, v2

    aget-wide v24, v6, v1

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->j:Lcom/google/android/filament/Camera;

    invoke-virtual/range {v7 .. v25}, Lcom/google/android/filament/Camera;->b(DDDDDDDDD)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->r:Lcom/google/android/filament/SwapChain;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->k:Lcom/google/android/filament/Renderer;

    move-wide/from16 v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/filament/Renderer;->a(Lcom/google/android/filament/SwapChain;J)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->i:Lcom/google/android/filament/View;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Renderer;->d(Lcom/google/android/filament/View;)V

    invoke-virtual {v2}, Lcom/google/android/filament/Renderer;->b()V

    :cond_b
    :goto_6
    return-void

    :cond_c
    const-string v0, "cameraManipulator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/ModelViewer;->o:Lcom/google/android/filament/utils/GestureDetector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/filament/utils/GestureDetector;->a(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "gestureDetector"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
