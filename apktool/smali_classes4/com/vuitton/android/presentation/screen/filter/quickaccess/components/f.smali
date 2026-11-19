.class public final synthetic Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(FLkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->b:F

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->d:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v6, v0

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v0

    shr-long/2addr v0, v2

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget v7, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->b:F

    mul-float v0, v6, v7

    sub-float v0, v6, v0

    add-float v5, v0, p1

    new-instance v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/SimpleFilterLineKt$SimpleFilterLine$3$2$1$1$1$1;

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->d:Landroidx/compose/animation/core/Animatable;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/SimpleFilterLineKt$SimpleFilterLine$3$2$1$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;FFFLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/f;->c:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v3, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
