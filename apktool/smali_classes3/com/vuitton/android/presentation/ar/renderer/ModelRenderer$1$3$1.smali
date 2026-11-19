.class final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/filament/gltfio/FilamentAsset;

.field public final synthetic c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/gltfio/FilamentAsset;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3$1;->b:Lcom/google/android/filament/gltfio/FilamentAsset;

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3$1;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/google/ar/core/Frame;

    iget-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3$1;->b:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p2}, Lcom/google/android/filament/gltfio/FilamentAsset;->c()Lcom/google/android/filament/gltfio/FilamentInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/FilamentInstance;->a()Lcom/google/android/filament/gltfio/Animator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->b()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->getTimestamp()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->c()F

    move-result v1

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/filament/gltfio/Animator;->a(F)V

    invoke-virtual {v0}, Lcom/google/android/filament/gltfio/Animator;->e()V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$3$1;->c:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->n:Z

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    invoke-virtual {p2}, Lcom/google/android/filament/gltfio/FilamentAsset;->a()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/Scene;->a([I)V

    iput-boolean v1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->n:Z

    :cond_1
    iget-object p1, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object p1, p1, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    invoke-virtual {p2}, Lcom/google/android/filament/gltfio/FilamentAsset;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result p2

    invoke-static {}, Lcom/vuitton/android/presentation/ar/MatrixKt;->c()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->i:Lcom/vuitton/android/presentation/ar/V3;

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    aget v1, v2, v1

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-static {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->j(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->j:F

    const v2, 0x42652ee0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/ar/MatrixKt;->f(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget v5, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    const/16 p0, 0x10

    new-array v1, p0, [F

    iget-object v3, v0, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    new-instance p0, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {p1, p0, p2}, Lcom/google/android/filament/TransformManager;->g([FI)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
