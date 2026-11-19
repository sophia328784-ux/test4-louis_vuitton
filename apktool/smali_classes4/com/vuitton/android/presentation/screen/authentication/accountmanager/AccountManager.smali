.class public final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;",
        "",
        "Landroidx/credentials/CredentialManager;",
        "credentialManager",
        "<init>",
        "(Landroidx/credentials/CredentialManager;)V",
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
.field public final a:Landroidx/credentials/CredentialManager;


# direct methods
.method public constructor <init>(Landroidx/credentials/CredentialManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;->a:Landroidx/credentials/CredentialManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;->a:Landroidx/credentials/CredentialManager;

    new-instance v4, Landroidx/credentials/CreatePasswordRequest;

    iget-object v5, p2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;->a:Ljava/lang/String;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;->b:Ljava/lang/String;

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Landroidx/credentials/CreatePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$registerCredentials$1;->d:I

    invoke-interface {p0, p1, v4, v0}, Landroidx/credentials/CredentialManager;->b(Landroid/content/Context;Landroidx/credentials/CreatePasswordRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Landroidx/credentials/CreateCredentialResponse;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;->d:I

    sget-object v5, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Failure;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Failure;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;->a:Landroidx/credentials/CredentialManager;

    new-instance v8, Landroidx/credentials/GetCredentialRequest;

    new-instance v9, Landroidx/credentials/GetPasswordOption;

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v14}, Landroidx/credentials/GetPasswordOption;-><init>(Ljava/util/Set;ZLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v15}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v6, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager$retrieveCredentials$1;->d:I

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v8, v2}, Landroidx/credentials/CredentialManager;->d(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Landroidx/credentials/GetCredentialResponse;

    iget-object v0, v1, Landroidx/credentials/GetCredentialResponse;->a:Landroidx/credentials/Credential;

    instance-of v1, v0, Landroidx/credentials/PasswordCredential;

    if-eqz v1, :cond_4

    move-object v7, v0

    check-cast v7, Landroidx/credentials/PasswordCredential;

    :cond_4
    if-nez v7, :cond_5

    return-object v5

    :cond_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;

    iget-object v2, v7, Landroidx/credentials/PasswordCredential;->d:Ljava/lang/String;

    iget-object v3, v7, Landroidx/credentials/PasswordCredential;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/CredentialManagerResult$Success;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountCredentials;)V

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v5, v0

    :cond_6
    return-object v5
.end method
