.class public Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public b:Z

.field public c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

.field public d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "authentication_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object p2, p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object p3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne p2, p3, :cond_2

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object p1, p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lineauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->i:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "authentication_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    const-string v2, "authentication_params"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-direct {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>()V

    goto :goto_0

    :cond_2
    const-string v2, "authentication_status"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    if-nez p1, :cond_3

    new-instance p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-direct {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;-><init>()V

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    new-instance v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V

    iput-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    return-void

    :cond_4
    :goto_1
    new-instance p1, Lcom/linecorp/linesdk/LineApiError;

    const-string v0, "The requested parameter is illegal."

    invoke-direct {p1, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNewIntent(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INIT:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v1, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iget-object v2, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    sget-object v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->STARTED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v3, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const/16 v3, 0x40

    invoke-static {v3}, Lcom/linecorp/linesdk/utils/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    invoke-direct {v4, v3}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->b:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    :try_start_0
    iget-object v3, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->e:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    iget-object v5, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    invoke-virtual {v3, v1, v5, v4, v0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->a(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    move-result-object v0

    iget-object v3, v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->b:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->a:Landroid/content/Intent;

    iget-boolean v5, v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->d:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->c:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v3, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    sget-object v3, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->LOGIN_ACTIVITY_NOT_FOUND:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {v2, v0, v3}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->d:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->b:Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "authentication_status"

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->c:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->b:Z

    return-void
.end method
