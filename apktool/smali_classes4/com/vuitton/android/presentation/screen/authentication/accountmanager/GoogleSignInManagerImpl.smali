.class public final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;",
        "Landroidx/credentials/CredentialManager;",
        "credentialManager",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Landroidx/credentials/CredentialManager;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
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

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method public constructor <init>(Landroidx/credentials/CredentialManager;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->a:Landroidx/credentials/CredentialManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method

.method public static b(Landroidx/credentials/Credential;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    instance-of v1, v0, Landroidx/credentials/CustomCredential;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/credentials/Credential;->a:Ljava/lang/String;

    const-string v2, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v1, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->h:Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;

    iget-object v0, v0, Landroidx/credentials/Credential;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Companion;->a(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object v0

    const-string v1, ""

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->g:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    iget-object v2, v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->f:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    iget-object v4, v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;->e:Ljava/lang/String;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/16 v16, 0x188

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_7

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_3
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    instance-of v0, v1, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/android/data/exception/GoogleSignInParsingException;

    const-string v2, "Failed to parse Google id token"

    check-cast v1, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/data/exception/GoogleSignInParsingException;-><init>(Ljava/lang/String;Lcom/google/android/libraries/identity/googleid/GoogleIdTokenParsingException;)V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/vuitton/android/data/exception/GoogleSignInUnsupportedTypeException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "Unable to parse Google id token"

    :cond_6
    invoke-direct {v0, v1}, Lcom/vuitton/android/data/exception/GoogleSignInUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    :goto_4
    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_7
    throw v1

    :cond_8
    :goto_6
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lcom/vuitton/android/data/exception/GoogleSignInUnsupportedTypeException;

    iget-object v0, v0, Landroidx/credentials/Credential;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/android/data/exception/GoogleSignInUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->f:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->e:Ljava/lang/String;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->d:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->c:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v5

    move-object v5, v2

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/NonceUtilsKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;

    invoke-direct {v7}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->c:Z

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {v8}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_b

    iput-object v8, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->a:Ljava/lang/String;

    iput-object v1, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->b:Ljava/lang/String;

    new-instance v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;

    iget-object v11, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->a:Ljava/lang/String;

    iget-object v12, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->b:Ljava/lang/String;

    iget-boolean v13, v7, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;->c:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)V

    new-instance v5, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v5}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    iget-object v5, v5, Landroidx/credentials/GetCredentialRequest$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Landroidx/credentials/GetCredentialRequest;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V

    :try_start_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->a:Landroidx/credentials/CredentialManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v5, p2

    :try_start_2
    iput-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, p3

    :try_start_3
    iput-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->c:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->e:Ljava/lang/String;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl$getGoogleCredentials$1;->h:I

    move-object/from16 v6, p1

    invoke-interface {v0, v6, v11, v2}, Landroidx/credentials/CredentialManager;->d(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v3, v1

    move-object v2, v5

    move-object v5, v7

    move-object v1, v0

    :goto_1
    :try_start_4
    check-cast v1, Landroidx/credentials/GetCredentialResponse;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_2
    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v7, p3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_3

    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    move-object v2, v5

    move-object v5, v7

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_6

    :cond_4
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_6
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_5

    :try_start_5
    check-cast v0, Landroidx/credentials/GetCredentialResponse;

    iget-object v0, v0, Landroidx/credentials/GetCredentialResponse;->a:Landroidx/credentials/Credential;

    invoke-static {v0, v4, v3, v2, v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;->b(Landroidx/credentials/Credential;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_5
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Success;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Success;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V

    goto :goto_9

    :cond_6
    instance-of v0, v1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Cancelled;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Cancelled;

    :goto_8
    move-object v1, v0

    goto :goto_9

    :cond_7
    instance-of v0, v1, Landroidx/credentials/exceptions/NoCredentialException;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$NoAccountFound;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$NoAccountFound;

    goto :goto_8

    :cond_8
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Failure;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "Unknown error"

    :cond_9
    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_9
    return-object v1

    :cond_a
    throw v1

    :cond_b
    const-string v0, "serverClientId should not be empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v5
.end method
