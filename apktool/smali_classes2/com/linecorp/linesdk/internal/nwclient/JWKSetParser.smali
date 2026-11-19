.class final Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/internal/JWKSet;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "keys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;

    invoke-direct {v2}, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;-><init>()V

    const-string v3, "kty"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->a:Ljava/lang/String;

    const-string v3, "alg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->b:Ljava/lang/String;

    const-string v3, "use"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->c:Ljava/lang/String;

    const-string v3, "kid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->d:Ljava/lang/String;

    const-string v3, "crv"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->e:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->f:Ljava/lang/String;

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;->g:Ljava/lang/String;

    new-instance v1, Lcom/linecorp/linesdk/internal/JWKSet$JWK;

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/internal/JWKSet$JWK;-><init>(Lcom/linecorp/linesdk/internal/JWKSet$JWK$Builder;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/linecorp/linesdk/internal/JWKSet$Builder;

    invoke-direct {p1}, Lcom/linecorp/linesdk/internal/JWKSet$Builder;-><init>()V

    iput-object p0, p1, Lcom/linecorp/linesdk/internal/JWKSet$Builder;->a:Ljava/util/ArrayList;

    new-instance p0, Lcom/linecorp/linesdk/internal/JWKSet;

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/JWKSet;-><init>(Lcom/linecorp/linesdk/internal/JWKSet$Builder;)V

    return-object p0
.end method
