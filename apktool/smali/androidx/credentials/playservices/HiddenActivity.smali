.class public Landroidx/credentials/playservices/HiddenActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/HiddenActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/credentials/playservices/HiddenActivity;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "Companion",
        "credentials-play-services-auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public b:Landroid/os/ResultReceiver;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/HiddenActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/HiddenActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->a:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->c(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Landroidx/credentials/playservices/HiddenActivity;->b:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->a:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "FAILURE_RESPONSE"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "ACTIVITY_REQUEST_CODE"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "RESULT_DATA"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    iput-boolean v1, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RESULT_RECEIVER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Landroidx/credentials/playservices/HiddenActivity;->b:Landroid/os/ResultReceiver;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "androidx.credentials.playservices.AWAITING_RESULT"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Z

    :cond_1
    iget-boolean p1, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Z

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ACTIVITY_REQUEST_CODE"

    const-string v5, "REQUEST_TYPE"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "SIGN_IN_INTENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbaq;

    new-instance v3, Lcom/google/android/gms/auth/api/identity/zbv;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/identity/zbv;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/auth-api/zbaq;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbv;)V

    new-instance v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;-><init>()V

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->b:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->f:Z

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->e:Z

    iget v4, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->g:I

    iput v4, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->f:I

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    iput-object p1, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->c:Ljava/lang/String;

    :cond_4
    iget-object p1, v2, Lcom/google/android/gms/internal/auth-api/zbaq;->l:Ljava/lang/String;

    iput-object p1, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->c:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    iget-object v6, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->b:Ljava/lang/String;

    iget-object v9, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->c:Ljava/lang/String;

    iget-object v10, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->d:Ljava/lang/String;

    iget-boolean v7, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->e:Z

    iget v5, v3, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->f:I

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/internal/auth-api/zbas;->c:Lcom/google/android/gms/common/Feature;

    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/internal/auth-api/zbak;

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/auth-api/zbak;-><init>(Lcom/google/android/gms/internal/auth-api/zbaq;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)V

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    const/16 v3, 0x613

    iput v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->i(ILcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance p1, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;

    invoke-direct {p1, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleGetSignInIntent$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    new-instance v0, Landroidx/credentials/playservices/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/credentials/playservices/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Li10;

    invoke-direct {p1, p0, v1}, Li10;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_5
    if-nez v2, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :sswitch_1
    const-string p1, "CREATE_PASSWORD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbag;

    new-instance v4, Lcom/google/android/gms/auth/api/identity/zbi;

    invoke-direct {v4}, Lcom/google/android/gms/auth/api/identity/zbi;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/internal/auth-api/zbag;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbi;)V

    new-instance v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;-><init>()V

    iget-object v5, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->b:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iput-object v5, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget v5, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->d:I

    iput v5, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->c:I

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->c:Ljava/lang/String;

    if-eqz p1, :cond_7

    iput-object p1, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    :cond_7
    iget-object p1, v2, Lcom/google/android/gms/internal/auth-api/zbag;->l:Ljava/lang/String;

    iput-object p1, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    iget-object v5, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget-object v6, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->b:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$Builder;->c:I

    invoke-direct {p1, v5, v6, v4}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;-><init>(Lcom/google/android/gms/auth/api/identity/SignInPassword;Ljava/lang/String;I)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/auth-api/zbas;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {v5}, [Lcom/google/android/gms/common/Feature;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/internal/auth-api/zbac;

    invoke-direct {v5, v2, p1}, Lcom/google/android/gms/internal/auth-api/zbac;-><init>(Lcom/google/android/gms/internal/auth-api/zbag;Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)V

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    iput-boolean v0, v4, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b:Z

    const/16 p1, 0x600

    iput p1, v4, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->i(ILcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance p1, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;

    invoke-direct {p1, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePassword$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    new-instance v0, Landroidx/credentials/playservices/a;

    invoke-direct {v0, p1, v3}, Landroidx/credentials/playservices/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Li10;

    invoke-direct {p1, p0, v3}, Li10;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_8
    if-nez v2, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :sswitch_2
    const-string p1, "CREATE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_a

    sget v2, Lcom/google/android/gms/fido/Fido;->a:I

    new-instance v2, Lcom/google/android/gms/fido/fido2/Fido2ApiClient;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fido/fido2/Fido2ApiClient;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/fido/fido2/zza;

    invoke-direct {v4, v2, p1}, Lcom/google/android/gms/fido/fido2/zza;-><init>(Lcom/google/android/gms/fido/fido2/Fido2ApiClient;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    const/16 p1, 0x151f

    iput p1, v3, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->i(ILcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance p1, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;

    invoke-direct {p1, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleCreatePublicKeyCredential$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    new-instance v1, Landroidx/credentials/playservices/a;

    invoke-direct {v1, p1, v0}, Landroidx/credentials/playservices/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Li10;

    invoke-direct {p1, p0, v0}, Li10;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_a
    if-nez v2, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :sswitch_3
    const-string p1, "BEGIN_SIGN_IN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_d

    new-instance v2, Lcom/google/android/gms/internal/auth-api/zbaq;

    new-instance v3, Lcom/google/android/gms/auth/api/identity/zbv;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/identity/zbv;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/auth-api/zbaq;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/zbv;)V

    new-instance v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;-><init>()V

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->c:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions;

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->g:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->c:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;

    iget-object v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->h:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->d:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;

    iget-boolean v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->e:Z

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->f:Z

    iget v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->f:I

    iput v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->g:I

    iget-boolean v4, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->i:Z

    iput-boolean v4, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->h:Z

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->d:Ljava/lang/String;

    if-eqz p1, :cond_c

    iput-object p1, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->e:Ljava/lang/String;

    :cond_c
    iget-object p1, v2, Lcom/google/android/gms/internal/auth-api/zbaq;->l:Ljava/lang/String;

    iput-object p1, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->e:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    iget-object v5, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->a:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions;

    iget-object v6, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->b:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;

    iget-object v7, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->e:Ljava/lang/String;

    iget-boolean v8, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->f:Z

    iget v9, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->g:I

    iget-object v10, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->c:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;

    iget-object v11, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->d:Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;

    iget-boolean v12, v3, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->h:Z

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;-><init>(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;Ljava/lang/String;ZILcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;Z)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v5, "auth_api_credentials_begin_sign_in"

    const-wide/16 v6, 0x8

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    filled-new-array {v3}, [Lcom/google/android/gms/common/Feature;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->c:[Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/internal/auth-api/zbaj;

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/auth-api/zbaj;-><init>(Lcom/google/android/gms/internal/auth-api/zbaq;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)V

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    iput-boolean v0, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b:Z

    const/16 v3, 0x611

    iput v3, p1, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->i(ILcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance p1, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;

    invoke-direct {p1, p0, v1}, Landroidx/credentials/playservices/HiddenActivity$handleBeginSignIn$1$1;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    new-instance v0, Landroidx/credentials/playservices/a;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/credentials/playservices/a;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p1, Li10;

    invoke-direct {p1, p0, v1}, Li10;-><init>(Landroidx/credentials/playservices/HiddenActivity;I)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_d
    if-nez v2, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_e
    :goto_0
    return-void

    :cond_f
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1a4a0ecf -> :sswitch_3
        0xed33ea -> :sswitch_2
        0x4a4e227e -> :sswitch_1
        0x760d02f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "androidx.credentials.playservices.AWAITING_RESULT"

    iget-boolean v1, p0, Landroidx/credentials/playservices/HiddenActivity;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
