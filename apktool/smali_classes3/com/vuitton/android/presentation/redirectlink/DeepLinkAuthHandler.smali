.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B9\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;",
        "redirectionState",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V",
        "Companion",
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


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final f:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->f:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    return-void
.end method

.method public static synthetic b(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs$Repair;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->a(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p4, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->e:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v5, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->f:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->b:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p2, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object p4, p2

    move-object p2, p1

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->b:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    invoke-direct {p4, p1, p2}, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;-><init>(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto :goto_1

    :cond_4
    move-object p4, v7

    :goto_1
    if-nez p4, :cond_6

    iget-object p4, v5, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of p1, p4, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p4, v7

    :cond_6
    :goto_2
    iput-object p4, v5, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    invoke-direct {p0, v7}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    iget-object p1, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    invoke-direct {p4, v6}, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;-><init>(Z)V

    invoke-interface {p1, p2, p4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->d:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    check-cast p4, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleLoginRedirect$1;->e:I

    invoke-interface {p4, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_4
    return-object v1

    :cond_a
    move-object p4, p2

    move-object p2, p3

    :goto_5
    iget-object v2, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/vuitton/android/presentation/redirectlink/DeeplinkUiState;-><init>(Z)V

    invoke-interface {v2, p1, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p4, Lkotlin/Result$Failure;

    if-nez p1, :cond_f

    move-object p1, p4

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v5, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->a(Z)V

    goto :goto_7

    :cond_c
    if-eqz p2, :cond_e

    invoke-static {p2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    sget-object p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForLogin;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForLogin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->a(Z)V

    :cond_f
    :goto_7
    invoke-static {p4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    sget-object p2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->g:Ljava/lang/String;

    const-string p3, "Unable to get account details"

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p2, p3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final c(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;

    iget v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->b:Ljava/util/List;

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->f:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    invoke-direct {v2, p1, v4}, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;-><init>(Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;Lcom/vuitton/android/presentation/redirectlink/RedirectionArgs;)V

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_5

    iget-object v2, p3, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of p1, v2, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v4

    :cond_5
    :goto_2
    iput-object v2, p3, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_ACCOUNT_ACTIVATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    move-object p3, p2

    check-cast p3, Ljava/util/List;

    iput-object p3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->b:Ljava/util/List;

    iput v3, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler$handleRegisterDeepLink$2;->e:I

    const/4 p3, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v2, p1, p3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p3}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p3

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    if-eqz p3, :cond_8

    new-instance p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;

    if-eqz p2, :cond_7

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    :cond_7
    invoke-direct {p3, v4, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    new-instance p3, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;

    invoke-direct {p3, p2, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToRegisterWithRedirection;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
