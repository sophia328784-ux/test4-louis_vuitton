.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v3, -0x1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-ne v2, v3, :cond_6

    iget-object v1, v1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz v1, :cond_6

    sget v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->e:I

    const-string v2, "authentication_result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "Authentication result is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v2, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v1

    :cond_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v2, v1, Lcom/linecorp/linesdk/auth/LineLoginResult;->b:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;

    iget-object v1, v1, Lcom/linecorp/linesdk/auth/LineLoginResult;->h:Lcom/linecorp/linesdk/LineApiError;

    iget-object v1, v1, Lcom/linecorp/linesdk/LineApiError;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Cancelled;->a:Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Cancelled;

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/linecorp/linesdk/auth/LineLoginResult;->e:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v1, :cond_5

    iget-object v12, v1, Lcom/linecorp/linesdk/LineIdToken;->b:Ljava/lang/String;

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/linecorp/linesdk/LineIdToken;->n:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    move-object v6, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Success;

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->LINE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/16 v18, 0x18e

    const/16 v19, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->d:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl$getLineCredentials$2$1$launcher$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v19}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v5}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Success;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;

    const-string v1, "Missing ID token"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v4, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_6
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;

    const-string v1, "Login cancelled or failed"

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineCredentialResult$Failure;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
