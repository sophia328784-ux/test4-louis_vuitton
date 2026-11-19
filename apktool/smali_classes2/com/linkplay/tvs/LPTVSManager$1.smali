.class Lcom/linkplay/tvs/LPTVSManager$1;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/tvs/LPTVSManager;->getTvsProfile(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/tvs/GetTvsProfileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceItem:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$listener:Lcom/linkplay/tvs/GetTvsProfileCallback;


# direct methods
.method public constructor <init>(Lcom/linkplay/tvs/LPTVSManager;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/tvs/GetTvsProfileCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$listener:Lcom/linkplay/tvs/GetTvsProfileCallback;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$listener:Lcom/linkplay/tvs/GetTvsProfileCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/tvs/GetTvsProfileCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 5

    const-string v0, "client_id"

    const-string v1, "client_secret"

    new-instance v2, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/linkplay/tvs/DecryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$listener:Lcom/linkplay/tvs/GetTvsProfileCallback;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/linkplay/tvs/TvsProfile;

    invoke-direct {v2}, Lcom/linkplay/tvs/TvsProfile;-><init>()V

    iget-object v3, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v3}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/linkplay/core/model/LPDeviceStatus;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/linkplay/tvs/TvsProfile;->setDsn(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "unknown command"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Failed"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/linkplay/tvs/TvsProfile;->setProductID(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/linkplay/tvs/TvsProfile;->setClientID(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/linkplay/tvs/LPTVSManager$1;->val$listener:Lcom/linkplay/tvs/GetTvsProfileCallback;

    invoke-interface {p0, v2}, Lcom/linkplay/tvs/GetTvsProfileCallback;->onSuccess(Lcom/linkplay/tvs/TvsProfile;)V

    return-void

    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/tvs/LPTVSManager$1;->onFailure(Ljava/lang/Exception;)V

    :cond_4
    return-void
.end method
