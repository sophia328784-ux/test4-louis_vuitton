.class public final Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/CertificateRepository;",
        "certificateRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/CertificateRepository;)V",
        "Param",
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
.field public final a:Lcom/vuitton/android/domain/repository/CertificateRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/CertificateRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;->a:Lcom/vuitton/android/domain/repository/CertificateRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;

    iget-object v2, p1, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$Param;->a:Ljava/lang/String;

    invoke-direct {p2, v2, v4, p1}, Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;->a:Lcom/vuitton/android/domain/repository/CertificateRepository;

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/domain/repository/CertificateRepository;->e(Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Failed to add certificate"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_5
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method
