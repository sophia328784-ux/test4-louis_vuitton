.class public final synthetic Lcom/vuitton/android/presentation/screen/story/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/story/components/c;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/story/components/c;->c:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/story/components/c;->c:Landroidx/compose/animation/core/Animatable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/story/components/StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/story/components/c;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
