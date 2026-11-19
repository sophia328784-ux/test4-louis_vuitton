.class final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl$proceedRegistration$1"
    f = "AuthenticationViewModelImpl.kt"
    l = {
        0xff
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->b:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->d:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-static {p1, v3, v4, v4, v7}, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;->a(Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    move-result-object p1

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;

    iget-object v8, p1, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;->c:Ljava/util/UUID;

    invoke-direct {v7, v8, p1, v5}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)V

    iput v6, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$proceedRegistration$1;->b:I

    invoke-virtual {v3, v7, p0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/LoginRegistrationCredentials;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_9

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_8

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "cid"

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7, v10, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move v8, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v9}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {v7, v10, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    :goto_3
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->N:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/AuthenticationUrls;->c:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/ClientCredentials;->e:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-static {v2, v4, v3, p1, v5}, Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;->a(Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    move-result-object p1

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->W:Lcom/vuitton/android/presentation/screen/authentication/base/OauthCredentials;

    :cond_9
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->P:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "AuthenticationViewModelImpl"

    const-string v0, "Unable to register user"

    invoke-interface {p0, p1, v0, v4}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
