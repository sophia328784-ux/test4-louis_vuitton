.class public final synthetic Lcom/vuitton/android/presentation/screen/story/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:I

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic g:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->b:Lkotlin/jvm/functions/Function0;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->f:Landroidx/compose/runtime/MutableIntState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->g:Landroidx/compose/foundation/pager/PagerState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->f:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/IntState;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$goToNextSlide$1$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->g:Landroidx/compose/foundation/pager/PagerState;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$goToNextSlide$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;->LAST_SLIDE_CHECKED:Lcom/vuitton/android/presentation/screen/story/models/StoryCloseUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/story/components/b;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
