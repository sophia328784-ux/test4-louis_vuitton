.class final Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt$NativeLoginComposable$5$1"
    f = "NativeLoginComposable.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->e:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->e:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;

    invoke-virtual {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;->b(Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;-><init>()V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/components/NativeLoginComposableKt$NativeLoginComposable$5$1;->e:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;->c7(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
