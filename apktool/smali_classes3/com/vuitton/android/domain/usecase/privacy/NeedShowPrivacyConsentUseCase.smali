.class public final Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;",
        "getConsentTypeUseCase",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/android/domain/repository/ConsentRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->b:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;-><init>(Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
