.class final Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.vuitton.android.presentation.link.WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1"
    f = "WebViewSocialAuthenticationHandlerImpl.kt"
    l = {
        0xd5,
        0xe5,
        0xe7
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

.field public final synthetic g:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->f:Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->g:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->f:Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->g:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;-><init>(Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->f:Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->g:Lcom/vuitton/foundation/logger/Logger;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->e:I

    const/4 v5, 0x0

    const-string v6, "WebViewSocialAuthenticationHandler"

    iget-object v7, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->g:Landroidx/fragment/app/FragmentActivity;

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v10, :cond_2

    if-eq v4, v9, :cond_1

    if-ne v4, v8, :cond_0

    iget-object v3, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->d:Ljava/lang/Object;

    iget-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    check-cast v9, Lkotlin/Result;

    iget-object v9, v9, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    move-object v8, v9

    goto/16 :goto_1

    :cond_2
    iget-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->i:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v11, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->k:Lkotlin/Lazy;

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v12, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;->a:Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Action$LogIn;

    invoke-interface {v4, v11, v12}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->KAKAO:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v11}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->a()Ljava/lang/String;

    move-result-object v11

    const-string v12, "social"

    invoke-virtual {v4, v11, v12}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;

    sget-object v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    sget-object v13, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iput-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->e:I

    invoke-interface {v11, v7, v12, v13, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;

    instance-of v11, v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;

    if-eqz v11, :cond_b

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object v8, v8, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v8}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->a:Ljava/lang/String;

    const/16 v20, 0x1a0

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v21}, Lcom/vuitton/foundation/model/domain/model/authentication/social/KakaoAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v8, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->d:Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    iput-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iput v9, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->e:I

    invoke-virtual {v8, v10, v0}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, v8, Lkotlin/Result$Failure;

    if-nez v9, :cond_7

    move-object v9, v8

    check-cast v9, Lkotlin/Unit;

    iget-object v9, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->h:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v4, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->c:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iput-object v8, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->d:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1;->e:I

    sget-object v10, Lcom/vuitton/android/core/events/AppEvent$LogInEvent;->a:Lcom/vuitton/android/core/events/AppEvent$LogInEvent;

    invoke-virtual {v9, v10, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    :goto_2
    return-object v3

    :cond_6
    move-object v0, v4

    move-object v4, v5

    move-object v3, v8

    :goto_3
    move-object v8, v3

    move-object v5, v4

    move-object v4, v0

    :cond_7
    invoke-static {v8}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v3, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$LogInError;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/monitoring/authentication/SocialAuthMonitoring$Error$LogInError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v3, v0, Lcom/vuitton/android/data/exception/SocialAuthException$RegistrationNeeded;

    if-eqz v3, :cond_9

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->j:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->KISA_FOR_SOCIAL_SIGN_IN:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-static {v0, v7, v1, v5, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->f:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    sget-object v14, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->LOG_IN:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->KAKAO:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Social Login Failed: "

    invoke-static {v3, v1, v2, v6, v0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    new-instance v0, Lkotlin/Result;

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    goto :goto_5

    :cond_b
    instance-of v0, v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Cancelled;

    if-eqz v0, :cond_c

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_c
    instance-of v0, v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;

    if-eqz v0, :cond_d

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;->a:Ljava/lang/String;

    const-string v1, "Kakao authentication failed: "

    invoke-static {v1, v0, v2, v6, v5}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v5
.end method
