.class public final Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;",
        "bestFormDispatchIdUseCase",
        "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;",
        "formRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;->b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget p1, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->d:I

    iget v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->c:I

    iget v3, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->b:I

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;->a:Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->b:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->d:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->g:I

    invoke-virtual {p2, p1, v3, v0}, Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    move v3, p1

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/forms/FormDispatchId;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;->b:Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->b:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->c:I

    iput p1, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase$run$1;->g:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;->g(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/forms/Form;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_5
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p0
.end method
