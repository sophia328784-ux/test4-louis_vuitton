.class public final Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/ConsentRepository;",
        "consentRepository",
        "Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;",
        "removeLastViewedProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;",
        "setDynamicYieldConsentUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;)V",
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

.field public final b:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->b:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->c:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->c:Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {p2, p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->i(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v8, v8, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v8, :cond_5

    goto :goto_1

    :cond_6
    move-object v2, v7

    :goto_1
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v2, :cond_7

    iget-object p2, v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_2

    :cond_7
    move-object p2, v7

    :goto_2
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-ne p2, v2, :cond_a

    iput v6, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;->b:Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_3
    iput v5, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    const/4 p0, 0x0

    invoke-virtual {v3, p0, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of p2, p2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz p2, :cond_b

    goto :goto_5

    :cond_c
    move-object p1, v7

    :goto_5
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz p1, :cond_d

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    :cond_d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-ne v7, p0, :cond_f

    iput v4, v0, Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase$run$1;->d:I

    invoke-virtual {v3, v6, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/SetDynamicYieldConsentUseCase;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    :goto_6
    return-object v1

    :cond_e
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
