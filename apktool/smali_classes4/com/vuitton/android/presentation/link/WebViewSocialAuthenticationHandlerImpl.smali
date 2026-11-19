.class public final Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0018BY\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;",
        "googleSignInManager",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;",
        "lineSignInManager",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;",
        "kakaoSignInManager",
        "Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;",
        "socialLoginUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;",
        "authenticationActivityRouter",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;

.field public final b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;

.field public final c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;

.field public final d:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

.field public final g:Lcom/vuitton/foundation/logger/Logger;

.field public final h:Lcom/vuitton/android/core/events/LVEventSender;

.field public final i:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final j:Z

.field public final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
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

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->b:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;

    iput-object p3, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;

    iput-object p4, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->d:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    iput-object p7, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->g:Lcom/vuitton/foundation/logger/Logger;

    iput-object p8, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->h:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p9, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->i:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    invoke-virtual {p10, p1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->j:Z

    new-instance p1, Lk61;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lk61;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->k:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;-><init>(Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v0, v0, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleGoogleAuthentication$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleGoogleAuthentication$1;-><init>(Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v0, v0, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1;-><init>(Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v0, v0, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
