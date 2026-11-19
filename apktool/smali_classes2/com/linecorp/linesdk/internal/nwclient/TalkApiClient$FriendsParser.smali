.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendsParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/GetFriendsResponse;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "friends"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;->c(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v4

    const-string v5, "displayNameOverridden"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v6, Lcom/linecorp/linesdk/LineFriendProfile;

    iget-object v7, v4, Lcom/linecorp/linesdk/LineProfile;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/linecorp/linesdk/LineProfile;->c:Ljava/lang/String;

    iget-object v9, v4, Lcom/linecorp/linesdk/LineProfile;->d:Landroid/net/Uri;

    iget-object v10, v4, Lcom/linecorp/linesdk/LineProfile;->e:Ljava/lang/String;

    invoke-direct/range {v6 .. v11}, Lcom/linecorp/linesdk/LineFriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "pageToken"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/linecorp/linesdk/GetFriendsResponse;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/GetFriendsResponse;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
