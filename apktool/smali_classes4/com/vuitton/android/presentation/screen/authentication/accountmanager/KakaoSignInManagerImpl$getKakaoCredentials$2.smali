.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;
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
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;",
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
    c = "com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManagerImpl$getKakaoCredentials$2"
    f = "KakaoSignInManager.kt"
    l = {
        0x2a,
        0x36
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->f:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->h:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->i:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->h:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->i:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->f:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->g:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v1

    move-object v11, v3

    move-object/from16 v3, p1

    :goto_0
    move-object v12, v2

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->e:I

    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v8, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$loginWithKakao$2$callback$1;

    invoke-direct {v8, v7}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$loginWithKakao$2$callback$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    sget-object v9, Lcom/kakao/sdk/user/UserApiClient;->c:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient$Companion;->a()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->g:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/kakao/sdk/auth/AuthCodeClient;->f:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kakao/sdk/auth/AuthCodeClient;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/kakao/sdk/auth/AuthCodeClient;->a:Lcom/kakao/sdk/common/util/IntentResolveClient;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v9, v11}, Lcom/kakao/sdk/common/util/IntentResolveClient;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient$Companion;->a()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$loginWithKakao$2$1;

    invoke-direct {v11, v7, v9, v6, v8}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$loginWithKakao$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v9, v6, v11}, Lcom/kakao/sdk/user/UserApiClient;->b(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient$Companion;->a()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v10

    invoke-static {v10, v9, v6, v8}, Lcom/kakao/sdk/user/UserApiClient;->a(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :goto_1
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object/from16 v21, v6

    move-object v6, v2

    move-object/from16 v2, v21

    :goto_2
    check-cast v7, Lkotlin/Result;

    if-eqz v7, :cond_f

    iget-object v7, v7, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v8, v7, Lkotlin/Result$Failure;

    if-eqz v8, :cond_6

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;

    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_6
    if-eqz v8, :cond_7

    move-object v7, v5

    :cond_7
    check-cast v7, Lcom/kakao/sdk/auth/model/OAuthToken;

    if-nez v7, :cond_8

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;

    const-string v1, "No token received"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_8
    invoke-virtual {v7}, Lcom/kakao/sdk/auth/model/OAuthToken;->c()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;

    const-string v1, "Missing ID token. Ensure OIDC is enabled on Kakao Console."

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_9
    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->c:Ljava/lang/String;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->d:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->e:I

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v8

    invoke-direct {v3, v8, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    sget-object v8, Lcom/kakao/sdk/user/UserApiClient;->c:Lcom/kakao/sdk/user/UserApiClient$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/user/UserApiClient$Companion;->a()Lcom/kakao/sdk/user/UserApiClient;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$fetchUserInfo$2$1;

    invoke-direct {v9, v3}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$fetchUserInfo$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/kakao/sdk/user/UserApiClient;->a:Lcom/kakao/sdk/user/UserApi;

    invoke-interface {v8, v4, v5}, Lcom/kakao/sdk/user/UserApi;->me(ZLjava/lang/String;)Lretrofit2/Call;

    move-result-object v4

    new-instance v8, Lcom/kakao/sdk/user/UserApiClient$me$2;

    invoke-direct {v8, v9}, Lcom/kakao/sdk/user/UserApiClient$me$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v8}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    move-object v11, v6

    move-object v13, v7

    goto/16 :goto_0

    :goto_4
    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;

    if-eqz v3, :cond_b

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;->a:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v2, v5

    :goto_5
    const-string v4, ""

    if-nez v2, :cond_c

    move-object v7, v4

    goto :goto_6

    :cond_c
    move-object v7, v2

    :goto_6
    if-eqz v3, :cond_d

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;->b:Ljava/lang/String;

    :cond_d
    if-nez v5, :cond_e

    move-object v8, v4

    goto :goto_7

    :cond_e
    move-object v8, v5

    :goto_7
    sget-object v18, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->KAKAO:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/16 v19, 0x18c

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->h:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;->i:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    move-object/from16 v17, v0

    move-object/from16 v16, v2

    invoke-direct/range {v6 .. v20}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v6}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V

    return-object v1

    :cond_f
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Cancelled;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Cancelled;

    return-object v0
.end method
