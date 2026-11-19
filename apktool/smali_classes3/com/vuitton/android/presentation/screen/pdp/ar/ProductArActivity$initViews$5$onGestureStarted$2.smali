.class public final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5$onGestureStarted$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/ar/gesture/DragGesture$OnGestureEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5$onGestureStarted$2",
        "Lcom/vuitton/android/presentation/ar/gesture/DragGesture$OnGestureEventListener;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5$onGestureStarted$2;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/Pair;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5$onGestureStarted$2;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    invoke-static {v1}, Lcom/vuitton/android/presentation/ar/arcore/ArModelsKt;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/ar/arcore/ViewRect;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-direct {v2, v3, p1}, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/Pair;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$5$onGestureStarted$2;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    invoke-static {v1}, Lcom/vuitton/android/presentation/ar/arcore/ArModelsKt;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/ar/arcore/ViewRect;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Move;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/gesture/DragGesture;->h:Lcom/vuitton/android/presentation/ar/V3;

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget p1, p1, v4

    invoke-direct {v2, v3, p1}, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Move;-><init>(FF)V

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
