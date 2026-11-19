.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/e;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/e;->c:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$2$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/e;->c:Landroidx/compose/animation/core/Animatable;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$2$1;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/e;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, p1, p2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
