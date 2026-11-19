.class public final Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AppLinkRepository;",
        "appLinkRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AppLinkRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/AppLinkRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AppLinkRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;->a:Lcom/vuitton/android/domain/repository/AppLinkRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;->a:Lcom/vuitton/android/domain/repository/AppLinkRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/AppLinkRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, p0

    :goto_2
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    const/16 p0, 0x3f

    invoke-static {p1, p0}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
