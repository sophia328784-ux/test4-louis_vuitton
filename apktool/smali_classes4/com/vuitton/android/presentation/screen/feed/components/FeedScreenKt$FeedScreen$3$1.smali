.class final Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$3$1"
    f = "FeedScreen.kt"
    l = {
        0x74,
        0x76
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->c:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    if-nez v1, :cond_3

    move v1, p1

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v6, v1

    :goto_1
    if-eq v1, p1, :cond_8

    if-eq v1, v5, :cond_5

    if-ne v1, v4, :cond_4

    move p1, v5

    goto :goto_2

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->d:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v6

    if-eq v6, p1, :cond_7

    sget-object v6, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    iput v5, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->b:I

    const/4 v4, 0x6

    invoke-static {v1, p1, v2, p0, v4}, Landroidx/compose/foundation/pager/PagerState;->g(Landroidx/compose/foundation/pager/PagerState;ILandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_3

    :cond_6
    iput v4, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;->b:I

    invoke-static {v1, p1, p0}, Landroidx/compose/foundation/pager/PagerState;->v(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_3
    return-object v0

    :cond_7
    :goto_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
