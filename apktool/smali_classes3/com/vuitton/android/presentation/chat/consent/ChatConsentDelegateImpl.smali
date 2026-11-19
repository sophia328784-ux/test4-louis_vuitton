.class public final Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;",
        "Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegate;",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;",
        "hasChatConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;",
        "updateChatConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;",
        "chatTrackerUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
        "presentation"
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
.field public final a:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

.field public final b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final c:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p4, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->c:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->f:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    :cond_0
    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    :cond_0
    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->c:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/UpdateChatConsentUseCase;->a:Lcom/vuitton/android/domain/repository/ConsentRepository;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/ConsentRepository;->a(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;

    iget v1, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;-><init>(Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->d:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->f:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v5, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, ""

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iput v7, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v6, v0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl$trackUser$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_b

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p1, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->n:Ljava/lang/String;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, p1

    :goto_4
    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v8, v3

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    const-string v1, " "

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    iget-object v0, v4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {v1, v8, p1, p0, v0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, v4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/DispatchLocale;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v5, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p1, v8, v8, v8, p0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final U0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->s()V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/consent/ChatConsentDelegateImpl;->e:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->z()V

    :cond_0
    return-void
.end method
