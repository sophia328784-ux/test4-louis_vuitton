.class public final Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;",
        "",
        "<init>",
        "()V",
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


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;->b:Ljava/lang/Object;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, v0, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase$run$1;->d:I

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Native AA - Not yet implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
