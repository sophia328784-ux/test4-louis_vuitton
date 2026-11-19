.class public final Lcom/vuitton/android/presentation/chat/ChatCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatAttachable;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/chat/ChatCoordinator;",
        "Lcom/vuitton/android/presentation/chat/ChatAttachable;",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;",
        "handleChatSystemUseCase",
        "Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;",
        "platformContract",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "featureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;",
        "hasChatConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;",
        "getConfirmationDetailsUseCase",
        "Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;",
        "chatTrackerUseCase",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;)V",
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
.field public final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

.field public final c:Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

.field public final d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

.field public i:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

.field public final j:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;)V
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

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c:Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

    iput-object p4, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->f:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->g:Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->h:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->j:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->b()V

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->l(II)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->i:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->a()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->j:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
