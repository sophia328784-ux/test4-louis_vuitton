.class public Lcom/google/android/filament/Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$Builder;,
        Lcom/google/android/filament/Engine$Backend;,
        Lcom/google/android/filament/Engine$FeatureLevel;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:J

.field public final b:Lcom/google/android/filament/TransformManager;

.field public final c:Lcom/google/android/filament/LightManager;

.field public final d:Lcom/google/android/filament/RenderableManager;

.field public final e:Lcom/google/android/filament/EntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/Engine$Backend;->values()[Lcom/google/android/filament/Engine$Backend;

    invoke-static {}, Lcom/google/android/filament/Engine$FeatureLevel;->values()[Lcom/google/android/filament/Engine$FeatureLevel;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Engine;->a:J

    new-instance v0, Lcom/google/android/filament/TransformManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetTransformManager(J)J

    move-result-wide v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, v0, Lcom/google/android/filament/TransformManager;->a:J

    iput-object v0, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    new-instance v0, Lcom/google/android/filament/LightManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetLightManager(J)J

    move-result-wide v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, v0, Lcom/google/android/filament/LightManager;->a:J

    iput-object v0, p0, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/LightManager;

    new-instance v0, Lcom/google/android/filament/RenderableManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetRenderableManager(J)J

    move-result-wide v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, v0, Lcom/google/android/filament/RenderableManager;->a:J

    iput-object v0, p0, Lcom/google/android/filament/Engine;->d:Lcom/google/android/filament/RenderableManager;

    new-instance v0, Lcom/google/android/filament/EntityManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetEntityManager(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/EntityManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/EntityManager;

    return-void
.end method

.method public static bridge synthetic a(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Engine;->nBuilderBuild(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Engine;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Engine;->nDestroyBuilder(J)V

    return-void
.end method

.method public static d(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Object couldn\'t be destroyed (double destroy()?)"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/opengl/EGLContext;)Lcom/google/android/filament/Engine;
    .locals 5

    new-instance v0, Lcom/google/android/filament/Engine$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$Builder;-><init>()V

    invoke-static {}, Lcom/google/android/filament/Platform;->a()Lcom/google/android/filament/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/Platform;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/filament/Platform;->a()Lcom/google/android/filament/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/filament/Platform;->b(Ljava/lang/Object;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/filament/Engine$Builder;->b:J

    invoke-static {v3, v4, v1, v2}, Lcom/google/android/filament/Engine;->nSetBuilderSharedContext(JJ)V

    invoke-static {v3, v4}, Lcom/google/android/filament/Engine;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Engine;

    invoke-direct {p0, v0, v1}, Lcom/google/android/filament/Engine;-><init>(J)V

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create Engine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string v0, "Invalid shared context "

    invoke-static {p0, v0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nBuilderBuild(J)J
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nCreateCamera(JI)J
.end method

.method private static native nCreateFence(J)J
.end method

.method private static native nCreateRenderer(J)J
.end method

.method private static native nCreateScene(J)J
.end method

.method private static native nCreateSwapChain(JLjava/lang/Object;J)J
.end method

.method private static native nCreateView(J)J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nDestroyCameraComponent(JI)V
.end method

.method private static native nDestroyEngine(J)V
.end method

.method private static native nDestroyEntity(JI)V
.end method

.method private static native nDestroyFence(JJ)Z
.end method

.method private static native nDestroyIndexBuffer(JJ)Z
.end method

.method private static native nDestroyMaterial(JJ)Z
.end method

.method private static native nDestroyMaterialInstance(JJ)Z
.end method

.method private static native nDestroyRenderer(JJ)Z
.end method

.method private static native nDestroyScene(JJ)Z
.end method

.method private static native nDestroySwapChain(JJ)Z
.end method

.method private static native nDestroyTexture(JJ)Z
.end method

.method private static native nDestroyVertexBuffer(JJ)Z
.end method

.method private static native nDestroyView(JJ)Z
.end method

.method private static native nFlushAndWait(JJ)Z
.end method

.method private static native nGetEntityManager(J)J
.end method

.method private static native nGetJobSystem(J)J
.end method

.method private static native nGetLightManager(J)J
.end method

.method private static native nGetRenderableManager(J)J
.end method

.method private static native nGetTransformManager(J)J
.end method

.method private static native nSetBuilderSharedContext(JJ)V
.end method


# virtual methods
.method public final f(I)Lcom/google/android/filament/Camera;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nCreateCamera(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Camera;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/Camera;-><init>(JI)V

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create Camera"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Lcom/google/android/filament/Fence;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateFence(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Fence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/filament/Fence;->a:J

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create Fence"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNativeJobSystem()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nGetJobSystem(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Engine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNativeObject()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Engine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final h()Lcom/google/android/filament/Renderer;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateRenderer(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/filament/Renderer;->a:J

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create Renderer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i()Lcom/google/android/filament/Scene;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateScene(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/filament/Scene;->a:J

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create Scene"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Landroid/view/Surface;)Lcom/google/android/filament/SwapChain;
    .locals 4

    invoke-static {}, Lcom/google/android/filament/Platform;->a()Lcom/google/android/filament/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/Platform;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/Engine;->nCreateSwapChain(JLjava/lang/Object;J)J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/SwapChain;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create SwapChain"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "Invalid surface "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()Lcom/google/android/filament/View;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateView(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/filament/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/filament/Viewport;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/android/filament/View;->b:Lcom/google/android/filament/Viewport;

    iput-wide v0, p0, Lcom/google/android/filament/View;->a:J

    return-object p0

    :cond_0
    const-string p0, "Couldn\'t create View"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nDestroyEngine(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    return-void
.end method

.method public final m(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nDestroyCameraComponent(JI)V

    return-void
.end method

.method public final n(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nDestroyEntity(JI)V

    return-void
.end method

.method public final o(Lcom/google/android/filament/Fence;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/filament/Fence;->a:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyFence(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    iput-wide v4, p1, Lcom/google/android/filament/Fence;->a:J

    return-void

    :cond_0
    const-string p0, "Calling method on destroyed Fence"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final p(Lcom/google/android/filament/IndexBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->f()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyIndexBuffer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/IndexBuffer;->a:J

    return-void
.end method

.method public final q(Lcom/google/android/filament/Material;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterial(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/Material;->a:J

    return-void
.end method

.method public final r(Lcom/google/android/filament/MaterialInstance;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterialInstance(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/MaterialInstance;->a:J

    return-void
.end method

.method public final s(Lcom/google/android/filament/Renderer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyRenderer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/Renderer;->a:J

    return-void
.end method

.method public final t(Lcom/google/android/filament/Scene;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyScene(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/Scene;->a:J

    return-void
.end method

.method public final u(Lcom/google/android/filament/SwapChain;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/filament/SwapChain;->b:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySwapChain(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    iput-wide v4, p1, Lcom/google/android/filament/SwapChain;->b:J

    return-void

    :cond_0
    const-string p0, "Calling method on destroyed SwapChain"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Lcom/google/android/filament/Texture;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyTexture(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/Texture;->a:J

    return-void
.end method

.method public final w(Lcom/google/android/filament/VertexBuffer;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyVertexBuffer(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/VertexBuffer;->a:J

    return-void
.end method

.method public final x(Lcom/google/android/filament/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyView(JJ)Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/filament/Engine;->d(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/View;->a:J

    return-void
.end method

.method public final y()V
    .locals 4

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/filament/Engine;->nFlushAndWait(JJ)Z

    return-void
.end method
