.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;,
        Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$CancelAuthenticationTask;
    }
.end annotation


# static fields
.field public static i:Landroid/content/Intent;


# instance fields
.field public final a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

.field public final b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

.field public final c:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field public final d:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

.field public final e:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

.field public final f:Lcom/linecorp/linesdk/internal/AccessTokenCache;

.field public final g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

.field public final h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)V
    .locals 6

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->c:Landroid/net/Uri;

    iget-object v3, p2, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->d:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    invoke-direct {v2, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V

    new-instance v3, Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iput-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->c:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iput-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->d:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iput-object v2, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->e:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    iput-object v3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->f:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_RECEIVED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iput-object v0, v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->e:Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "Illegal redirection from external application."

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->d:Ljava/lang/String;

    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "friendship_status_changed"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v4, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "Illegal parameter value of \'state\'."

    invoke-direct/range {v4 .. v9}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    iget-object p1, v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v0, v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    const-string v0, "ACCESS_DENIED"

    iget-object v1, v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->CANCEL:Lcom/linecorp/linesdk/LineApiResponseCode;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError;->e:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->AUTHENTICATION_AGENT_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p1

    :goto_3
    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void

    :cond_7
    new-instance p1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;

    invoke-direct {p1, p0, v2}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V

    filled-new-array {v3}, [Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
