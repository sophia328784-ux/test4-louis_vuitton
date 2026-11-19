.class final Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;

    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;-><init>()V

    const-string v0, "issuer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->a:Ljava/lang/String;

    const-string v0, "authorization_endpoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->b:Ljava/lang/String;

    const-string v0, "token_endpoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->c:Ljava/lang/String;

    const-string v0, "jwks_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->d:Ljava/lang/String;

    const-string v0, "response_types_supported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/JSONUtils;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->e:Ljava/util/ArrayList;

    const-string v0, "subject_types_supported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/JSONUtils;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->f:Ljava/util/ArrayList;

    const-string v0, "id_token_signing_alg_values_supported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/linecorp/linesdk/utils/JSONUtils;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;->g:Ljava/util/ArrayList;

    new-instance p1, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;-><init>(Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument$Builder;)V

    return-object p1
.end method
