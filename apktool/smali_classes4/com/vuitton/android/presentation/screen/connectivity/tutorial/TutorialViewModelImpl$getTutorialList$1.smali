.class final Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl$getTutorialList$1"
    f = "TutorialViewModelImpl.kt"
    l = {
        0x23,
        0x24,
        0x25
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->e:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->e:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->e:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->e:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->b:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;

    :try_start_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_6

    if-ne p1, v4, :cond_5

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    goto :goto_4

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    check-cast p1, Ljava/util/List;

    goto :goto_4

    :cond_8
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->c:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl$getTutorialList$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    :goto_2
    return-object v2

    :cond_9
    :goto_3
    check-cast p1, Ljava/util/List;

    :goto_4
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a

    check-cast p1, Ljava/util/List;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
