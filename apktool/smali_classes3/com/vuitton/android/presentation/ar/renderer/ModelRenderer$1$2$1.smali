.class final Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$2$1;
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


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$2$1;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent;

    instance-of p2, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$1$2$1;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->j:F

    if-eqz p2, :cond_2

    new-instance p2, Lkotlin/Pair;

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;

    iget v1, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;->a:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const v2, 0x40c90fdb

    if-gez v1, :cond_0

    neg-float v1, v0

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    div-float v1, v0, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    iget v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    iget p1, p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;->b:F

    mul-float/2addr v0, p1

    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p2, Lkotlin/Pair;

    new-instance p1, Ljava/lang/Float;

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    iget v0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p2, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p2, p2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iput p1, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->j:F

    iput p2, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->k:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
