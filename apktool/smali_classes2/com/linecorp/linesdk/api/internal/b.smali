.class public final synthetic Lcom/linecorp/linesdk/api/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;


# instance fields
.field public final synthetic a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/b;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    return-void
.end method


# virtual methods
.method public final a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/b;->a:Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;

    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->c:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a:Landroid/net/Uri;

    const-string v1, "openchat/v1"

    const-string v2, "terms/agreement"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->c(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/LinkedHashMap;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->h:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method
