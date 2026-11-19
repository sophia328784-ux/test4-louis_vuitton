.class public final Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;",
        "automatedTestRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/AutomatedTestRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;->a:Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    instance-of p1, p2, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;

    iget v0, p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;->d:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, p1, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;->a:Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;->a()Lkotlin/Result$Failure;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
