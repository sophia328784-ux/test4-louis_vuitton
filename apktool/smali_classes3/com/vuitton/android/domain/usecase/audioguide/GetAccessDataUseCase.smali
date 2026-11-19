.class public final Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AudioGuideRepository;",
        "audioGuideRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AudioGuideRepository;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/AudioGuideRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AudioGuideRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;->a:Lcom/vuitton/android/domain/repository/AudioGuideRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->e:I

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;->a:Lcom/vuitton/android/domain/repository/AudioGuideRepository;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-wide v5, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->b:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    invoke-interface {p1}, Lkotlin/time/Clock;->now()Lkotlin/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/time/Instant;->a()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->b:J

    iput v5, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->e:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AudioGuideRepository;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v5, v6

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;

    if-eqz v3, :cond_6

    iget-wide v7, v3, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuideAccessData;->b:J

    cmp-long p1, v7, v5

    if-lez p1, :cond_6

    return-object v3

    :cond_6
    if-eqz v3, :cond_7

    iput-wide v5, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->b:J

    iput v4, v0, Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase$run$1;->e:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AudioGuideRepository;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "No Audio guide accessible."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
