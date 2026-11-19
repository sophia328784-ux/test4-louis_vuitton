.class public final synthetic Ld5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ld5;->b:I

    iput-object p1, p0, Ld5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Ld5;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ld5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/search/SearchView;

    sget p1, Lcom/google/android/material/search/SearchView;->F:I

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/search/SearchView;->f()V

    :cond_0
    return v1

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    new-instance p1, Lkotlin/Pair;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->A:Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/ActivityProductDetailArBinding;->d:Landroid/view/SurfaceView;

    invoke-static {v3}, Lcom/vuitton/android/presentation/ar/arcore/ArModelsKt;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/ar/arcore/ViewRect;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/vuitton/android/presentation/ar/arcore/TouchEvent$Stop;-><init>(FF)V

    invoke-direct {p1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->u:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->z:Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/gesture/TransformationSystem;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->a(Landroid/view/MotionEvent;)V

    iget-object v2, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b:Z

    if-nez v5, :cond_4

    invoke-virtual {v4, p2}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->a(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b:Z

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->c:Z

    invoke-virtual {v4, p2}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->e(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_4
    iput-boolean v1, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->c:Z

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->b:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4, p2}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->f(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->e:Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->c()Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture$OnGestureEventListener;->b(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V

    :cond_5
    :goto_2
    iget-boolean v5, v4, Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;->c:Z

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer$OnGestureStartedListener;

    invoke-interface {v6, v4}, Lcom/vuitton/android/presentation/ar/gesture/BaseGestureRecognizer$OnGestureStartedListener;->a(Lcom/vuitton/android/presentation/ar/gesture/BaseGesture;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lu5;

    const/16 v3, 0x11

    invoke-direct {p1, v3}, Lu5;-><init>(I)V

    new-instance v3, Lb4;

    const/4 v4, 0x4

    invoke-direct {v3, p1, v4}, Lb4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    goto/16 :goto_1

    :cond_7
    return v0

    :cond_8
    const-string p0, "transformationSystem"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    check-cast p0, Landroid/view/ScaleGestureDetector;

    invoke-static {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/views/camera/CameraFragment;->s(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    sget-object p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_4
    if-ge v0, p1, :cond_a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
