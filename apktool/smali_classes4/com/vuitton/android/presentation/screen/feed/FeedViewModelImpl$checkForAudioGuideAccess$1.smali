.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$checkForAudioGuideAccess$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x121
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->c:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    iget-object v6, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->d:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v2}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v7

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v8

    iget-object v10, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->e:Ljava/lang/String;

    iget-object v11, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->f:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    invoke-interface {v1, p0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
