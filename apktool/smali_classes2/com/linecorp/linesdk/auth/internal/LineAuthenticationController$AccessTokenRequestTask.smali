.class Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessTokenRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;",
        "Ljava/lang/Void;",
        "Lcom/linecorp/linesdk/auth/LineLoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;)V

    return-void
.end method

.method private validateIdToken(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->c:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v1, v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;

    invoke-direct {v1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;-><init>()V

    iput-object p1, v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->a:Lcom/linecorp/linesdk/LineIdToken;

    iget-object p1, v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object p1, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iget-object p1, p1, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b:Ljava/lang/String;

    iput-object p1, v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->e:Ljava/lang/String;

    iput-object p0, v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;->e:Ljava/lang/String;

    new-instance p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;-><init>(Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator$Builder;)V

    iget-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a:Lcom/linecorp/linesdk/LineIdToken;

    iget-object p2, p1, Lcom/linecorp/linesdk/LineIdToken;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/linecorp/linesdk/LineIdToken;->g:Ljava/util/Date;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->b:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object p2, p1, Lcom/linecorp/linesdk/LineIdToken;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_0
    iget-object p2, p1, Lcom/linecorp/linesdk/LineIdToken;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p1, Lcom/linecorp/linesdk/LineIdToken;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    iget-object p1, p1, Lcom/linecorp/linesdk/LineIdToken;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-gtz p2, :cond_4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3

    return-void

    :cond_3
    const-string p0, "OpenId expiresAt is before current time: "

    invoke-static {p1, p0}, Lx1;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "OpenId issuedAt is after current time: "

    invoke-static {v0, p0}, Lx1;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "OpenId nonce does not match."

    invoke-static {p1, p0, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_6
    const-string p0, "OpenId audience does not match."

    invoke-static {p0, v1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_7
    const-string p0, "OpenId subject does not match."

    invoke-static {p0, v1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_8
    const-string p0, "OpenId issuer does not match."

    invoke-static {p0, v1, p2}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenValidator;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get OpenId Discovery Document.  Response Code: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    const-string v0, " Error Data: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public varargs doInBackground([Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "requestToken is null. Please check result by isSuccess before."

    if-nez v2, :cond_7

    iget-object v8, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v2, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v5, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->b:Lcom/linecorp/linesdk/internal/pkce/PKCECode;

    iget-object v10, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v6, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->c:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v2, v2, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iget-object v12, v2, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b:Ljava/lang/String;

    iget-object v2, v6, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->a:Landroid/net/Uri;

    const-string v7, "oauth2/v2.1"

    const-string v9, "token"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v14, v5, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->b:Ljava/lang/String;

    sget-object v5, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    const-string v17, "client_version"

    const-string v18, "LINE SDK Android v5.11.1"

    const-string v5, "grant_type"

    move-object v7, v6

    const-string v6, "authorization_code"

    move-object v9, v7

    const-string v7, "code"

    move-object v11, v9

    const-string v9, "redirect_uri"

    move-object v13, v11

    const-string v11, "client_id"

    move-object v15, v13

    const-string v13, "code_verifier"

    move-object/from16 v19, v15

    const-string v15, "id_token_key_type"

    move-object/from16 v4, v19

    const/16 p1, 0x0

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/linecorp/linesdk/utils/UriUtils;->b([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    iget-object v6, v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v4, v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v6, v2, v5, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->g(Landroid/net/Uri;Ljava/util/LinkedHashMap;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v2, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v1, v2, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;

    iget-object v4, v2, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->a:Lcom/linecorp/linesdk/internal/InternalAccessToken;

    iget-object v5, v2, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->b:Ljava/util/List;

    sget-object v6, Lcom/linecorp/linesdk/Scope;->c:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v6, v6, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->d:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iget-object v7, v6, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a:Landroid/net/Uri;

    const-string v8, "v2"

    const-string v9, "profile"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v6, v6, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {v4}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/LinkedHashMap;

    move-result-object v8

    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v10, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/linecorp/linesdk/LineApiResponse;->d()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v0, v6, Lcom/linecorp/linesdk/LineApiResponse;->a:Lcom/linecorp/linesdk/LineApiResponseCode;

    iget-object v1, v6, Lcom/linecorp/linesdk/LineApiResponse;->c:Lcom/linecorp/linesdk/LineApiError;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v6}, Lcom/linecorp/linesdk/LineApiResponse;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/linecorp/linesdk/LineProfile;

    iget-object v7, v6, Lcom/linecorp/linesdk/LineProfile;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object/from16 v6, p1

    move-object v7, v6

    :goto_0
    iget-object v8, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v8, v8, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->f:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v8, v4}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->b(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V

    iget-object v2, v2, Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;->c:Lcom/linecorp/linesdk/LineIdToken;

    if-eqz v2, :cond_4

    :try_start_0
    invoke-direct {v0, v2, v7}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->validateIdToken(Lcom/linecorp/linesdk/LineIdToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_1
    new-instance v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;

    invoke-direct {v7}, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;-><init>()V

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->e:Ljava/lang/String;

    iput-object v0, v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->b:Ljava/lang/String;

    iput-object v6, v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->c:Lcom/linecorp/linesdk/LineProfile;

    iput-object v2, v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->d:Lcom/linecorp/linesdk/LineIdToken;

    iget-object v0, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->b:Ljava/lang/Boolean;

    iput-object v0, v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->e:Ljava/lang/Boolean;

    new-instance v0, Lcom/linecorp/linesdk/LineCredential;

    new-instance v8, Lcom/linecorp/linesdk/LineAccessToken;

    iget-object v9, v4, Lcom/linecorp/linesdk/internal/InternalAccessToken;->a:Ljava/lang/String;

    iget-wide v10, v4, Lcom/linecorp/linesdk/internal/InternalAccessToken;->b:J

    iget-wide v12, v4, Lcom/linecorp/linesdk/internal/InternalAccessToken;->c:J

    invoke-direct/range {v8 .. v13}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v8, v5}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    iput-object v0, v7, Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;->f:Lcom/linecorp/linesdk/LineCredential;

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-direct {v0, v7}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/auth/LineLoginResult$Builder;)V

    return-object v0

    :cond_5
    invoke-static {v3}, Lmt;->i(Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_2
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    const-string v1, "Requested data is missing."

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-static {v1, v0}, Lcom/linecorp/linesdk/auth/LineLoginResult;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object v0

    return-object v0

    :cond_7
    const/16 p1, 0x0

    invoke-static {v3}, Lmt;->i(Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, [Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->doInBackground([Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;)Lcom/linecorp/linesdk/auth/LineLoginResult;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/linecorp/linesdk/auth/LineLoginResult;)V
    .locals 2

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->this$0:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->h:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    sget-object v1, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;->INTENT_HANDLED:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iput-object v1, v0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->f:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus$Status;

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationController$AccessTokenRequestTask;->onPostExecute(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    return-void
.end method
