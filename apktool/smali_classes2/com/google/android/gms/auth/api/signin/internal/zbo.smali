.class public abstract Lcom/google/android/gms/auth/api/signin/internal/zbo;
.super Lcom/google/android/gms/internal/auth-api/zbb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/zbp;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth-api/zbb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    check-cast p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->F2()V

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->b()V

    return p3

    :cond_1
    check-cast p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbt;->F2()V

    iget-object p0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbt;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->l:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v0, :cond_4

    const-string v1, "defaultGoogleSignInAccount"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "googleSignInOptions"

    invoke-static {v2, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->W1(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :catch_0
    :cond_3
    :goto_0
    move-object v1, v3

    :cond_4
    :goto_1
    new-instance p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->a:Lcom/google/android/gms/common/api/Api;

    new-instance v3, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;-><init>()V

    new-instance v4, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/ApiExceptionMapper;-><init>()V

    iput-object v4, v3, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->a:Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->a()Lcom/google/android/gms/common/api/GoogleApi$Settings;

    move-result-object v3

    invoke-direct {p1, p0, v2, v1, v3}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    const/4 p0, 0x3

    iget-object v1, p1, Lcom/google/android/gms/common/api/GoogleApi;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/common/api/GoogleApi;->i:Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->j()I

    move-result p1

    if-ne p1, p0, :cond_5

    move p1, p3

    goto :goto_2

    :cond_5
    move p1, p2

    :goto_2
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a:Lcom/google/android/gms/common/logging/Logger;

    new-array p2, p2, [Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/gms/common/logging/Logger;->c:I

    if-gt v3, p0, :cond_6

    const-string p0, "Revoking access"

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/common/logging/Logger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p0

    const-string p2, "refreshToken"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zbb;->zba(Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p0

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/google/android/gms/auth/api/signin/internal/zbk;

    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/zbl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/internal/zabq;->b(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    :goto_3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->j()I

    move-result p1

    if-ne p1, p0, :cond_9

    move p1, p3

    goto :goto_4

    :cond_9
    move p1, p2

    :goto_4
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a:Lcom/google/android/gms/common/logging/Logger;

    new-array p2, p2, [Ljava/lang/Object;

    iget v3, v0, Lcom/google/android/gms/common/logging/Logger;->c:I

    if-gt v3, p0, :cond_a

    const-string p0, "Signing out"

    invoke-virtual {v0, p0, p2}, Lcom/google/android/gms/common/logging/Logger;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/zbm;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_b

    sget-object p0, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    const-string p1, "Result must not be null"

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Preconditions;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_5

    :cond_b
    new-instance p1, Lcom/google/android/gms/auth/api/signin/internal/zbi;

    invoke-direct {p1, v2}, Lcom/google/android/gms/auth/api/signin/internal/zbl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/zabq;->b(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;)Lcom/google/android/gms/tasks/Task;

    :goto_6
    return p3
.end method
