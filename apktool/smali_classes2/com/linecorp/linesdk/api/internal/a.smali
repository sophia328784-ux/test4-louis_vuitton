.class public final synthetic Lcom/linecorp/linesdk/api/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field public final synthetic a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

.field public final synthetic b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/a;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/a;->b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    return-void
.end method


# virtual methods
.method public final a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5

    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/a;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object v0, v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->c:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iget-object v1, v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a:Landroid/net/Uri;

    const-string v2, "openchat/v1"

    const-string v3, "openchats"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/a;->b:Lcom/linecorp/linesdk/openchat/OpenChatParameters;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    iget-object v4, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "description"

    iget-object v4, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "creatorDisplayName"

    iget-object v4, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "category"

    iget-object v4, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->d:Lcom/linecorp/linesdk/openchat/OpenChatCategory;

    invoke-virtual {v4}, Lcom/linecorp/linesdk/openchat/OpenChatCategory;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "allowSearch"

    iget-boolean p0, p0, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->e:Z

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "{}"

    :goto_0
    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->h(Landroid/net/Uri;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method
