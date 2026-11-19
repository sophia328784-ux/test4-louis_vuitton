.class public final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer$OnGestureStartedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3",
        "Lcom/vuitton/android/presentation/ar/gesture/PinchGestureRecognizer$OnGestureStartedListener;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;->b(Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3$onGestureStarted$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3$onGestureStarted$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;)V

    iput-object v0, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->e:Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$3;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v0, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a:Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;

    iget p1, p1, Lcom/vuitton/android/presentation/ar/gesture/PinchGesture;->m:F

    const/4 v1, 0x4

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;->a:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method
