.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenChatRoomStatusParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
        ">;"
    }
.end annotation


# virtual methods
.method public final b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    const-string p0, "status"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;->valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;

    move-result-object p0

    return-object p0
.end method
