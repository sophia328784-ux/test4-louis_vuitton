.class final Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$4$1"
    f = "FeedScreen.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->c:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->b:Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->a:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-static {p1}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;->c:Lkotlin/jvm/functions/Function1;

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/core/type/SystemIcons;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    new-instance v0, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v0, p1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
