.class public final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;


# instance fields
.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;->d:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->c:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;->OK:Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/NetworkManager$ResponseStatus;

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/BaseResponse;->b:Lorg/json/JSONObject;

    const-string v0, "itemList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    new-instance v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;-><init>(Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networkmanager/task/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "GetMakeupItemListResponse"

    const-string v3, "Parse MakeupItemMetadata failed."

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method
