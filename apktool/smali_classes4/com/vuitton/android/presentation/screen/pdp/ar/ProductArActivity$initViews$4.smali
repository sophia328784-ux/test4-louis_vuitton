.class public final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer$OnGestureStartedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4",
        "Lcom/vuitton/android/presentation/ar/gesture/TwistGestureRecognizer$OnGestureStartedListener;",
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;->b(Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4$onGestureStarted$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4$onGestureStarted$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;)V

    iput-object v0, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->e:Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$initViews$4;->a:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->w:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget p1, p1, Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;->l:F

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    return-void
.end method
