.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;
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
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult;",
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
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult;",
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
    c = "com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManagerImpl$getLineCredentials$2"
    f = "LineSignInManager.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

.field public final synthetic d:Landroidx/activity/ComponentActivity;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->d:Landroidx/activity/ComponentActivity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->d:Landroidx/activity/ComponentActivity;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;Landroidx/activity/ComponentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->b:I

    move p1, v2

    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;

    invoke-direct {v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;-><init>()V

    sget-object v6, Lcom/linecorp/linesdk/Scope;->c:Lcom/linecorp/linesdk/Scope;

    sget-object v7, Lcom/linecorp/linesdk/Scope;->d:Lcom/linecorp/linesdk/Scope;

    sget-object v8, Lcom/linecorp/linesdk/Scope;->e:Lcom/linecorp/linesdk/Scope;

    filled-new-array {v6, v7, v8}, [Lcom/linecorp/linesdk/Scope;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->a:Ljava/util/List;

    iput-object v5, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;->b:Ljava/lang/String;

    new-instance v6, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-direct {v6, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationParams$Builder;)V

    new-instance v1, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->d:Landroidx/activity/ComponentActivity;

    invoke-direct {v1, p1, v7}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance p1, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    invoke-direct {p1, v1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;-><init>(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;)V

    invoke-static {v7}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->a(Landroid/content/Context;)V

    sget v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->e:I

    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-direct {v8, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authentication_config"

    invoke-virtual {v8, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "authentication_params"

    invoke-virtual {v8, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "line_login_"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v9

    new-instance v10, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v10}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V

    invoke-virtual {v9, p1, v10, v1}, Landroidx/activity/result/ActivityResultRegistry;->e(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$3;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$1;-><init>(Landroidx/activity/result/ActivityResultRegistry$register$3;)V

    invoke-interface {v2, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v8}, Landroidx/activity/result/ActivityResultRegistry$register$3;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
