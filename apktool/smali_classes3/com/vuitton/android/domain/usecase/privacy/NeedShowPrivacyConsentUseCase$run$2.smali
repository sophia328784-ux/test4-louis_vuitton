.class final Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.vuitton.android.domain.usecase.privacy.NeedShowPrivacyConsentUseCase$run$2"
    f = "NeedShowPrivacyConsentUseCase.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;->b:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;->b:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;-><init>(Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2;->b:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->b:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->k()Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    move-result-object p0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;->NONE:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->g()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/ConsentRepository;->m()J

    move-result-wide v1

    sget-object p1, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase$run$2$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p0, v4, :cond_11

    if-eq p0, v3, :cond_11

    const/4 v6, 0x3

    if-ne p0, v6, :cond_10

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_4

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_1

    :cond_4
    move-object p0, v5

    :goto_1
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_7

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_3

    :cond_7
    move-object p0, v5

    :goto_3
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_9
    move-object v6, v5

    :goto_4
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_a

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_5

    :cond_a
    move-object p0, v5

    :goto_5
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v6, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_c
    move-object v0, v5

    :goto_6
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v0, :cond_d

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    :cond_d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-ne v5, p0, :cond_e

    goto :goto_7

    :cond_e
    move p0, p1

    goto/16 :goto_f

    :cond_f
    :goto_7
    move p0, v4

    goto/16 :goto_f

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_11
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    if-eqz v7, :cond_12

    goto :goto_8

    :cond_13
    move-object v6, v5

    :goto_8
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_14

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_9

    :cond_14
    move-object p0, v5

    :goto_9
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    if-eqz v7, :cond_15

    goto :goto_a

    :cond_16
    move-object v6, v5

    :goto_a
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_17

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_b

    :cond_17
    move-object p0, v5

    :goto_b
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v7, v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v7, :cond_18

    goto :goto_c

    :cond_19
    move-object v6, v5

    :goto_c
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v6, :cond_1a

    iget-object p0, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    goto :goto_d

    :cond_1a
    move-object p0, v5

    :goto_d
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, v6, :cond_f

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    instance-of v6, v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    if-eqz v6, :cond_1b

    goto :goto_e

    :cond_1c
    move-object v0, v5

    :goto_e
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    if-eqz v0, :cond_1d

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    :cond_1d
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-ne v5, p0, :cond_e

    goto/16 :goto_7

    :goto_f
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v5, -0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p0, :cond_1f

    :cond_1e
    move p1, v4

    :cond_1f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
