.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/b;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/b;->c:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v3

    shr-long v1, v3, v2

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    add-float/2addr v1, p1

    new-instance p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/b;->c:Landroidx/compose/animation/core/Animatable;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/FilterCategorySliderKt$FilterCategorySlider$1$2$1$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/b;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
