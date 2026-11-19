.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->c:Landroidx/compose/animation/core/Animatable;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->d:F

    iput p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->e:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->c:Landroidx/compose/animation/core/Animatable;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->d:F

    iget v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->e:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/d;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v4, v4, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
