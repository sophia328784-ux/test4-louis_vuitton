.class final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$2;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

.field public final synthetic c:Lcom/google/android/filament/gltfio/FilamentAsset;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/gltfio/FilamentAsset;Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$2;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$2;->c:Lcom/google/android/filament/gltfio/FilamentAsset;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/vuitton/android/presentation/ar/V3;

    iget-object p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$2;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object v0, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->a(Ljava/lang/Object;)Z

    iput-object p1, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->i:Lcom/vuitton/android/presentation/ar/V3;

    iget-object p1, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->e:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object p1, p1, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/TransformManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$1$2;->c:Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/FilamentAsset;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/filament/TransformManager;->c(I)I

    move-result p0

    invoke-static {}, Lcom/vuitton/android/presentation/ar/MatrixKt;->c()Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget-object v2, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->i:Lcom/vuitton/android/presentation/ar/V3;

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-static {v0, v3, v4, v2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->j(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget v2, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->j:F

    const v3, 0x42652ee0

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v4, v3}, Lcom/vuitton/android/presentation/ar/MatrixKt;->f(Lcom/vuitton/android/presentation/ar/M4;FFF)Lcom/vuitton/android/presentation/ar/M4;

    move-result-object v0

    iget v6, p2, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    const/16 p2, 0x10

    new-array v2, p2, [F

    iget-object v4, v0, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v7, v6

    move v8, v6

    invoke-static/range {v2 .. v8}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    new-instance p2, Lcom/vuitton/android/presentation/ar/M4;

    invoke-direct {p2, v2}, Lcom/vuitton/android/presentation/ar/M4;-><init>([F)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/ar/M4;->a:[F

    invoke-virtual {p1, p2, p0}, Lcom/google/android/filament/TransformManager;->g([FI)V

    return-object v1
.end method
