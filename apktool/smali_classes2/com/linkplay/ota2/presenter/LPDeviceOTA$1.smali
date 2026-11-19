.class Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareStartUpdate(Lcom/linkplay/ota2/model/LPOTAConfiguration;Lcom/linkplay/ota2/presenter/LPOTAListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

.field final synthetic val$otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/presenter/LPOTAListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    iput-object p2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->val$otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMvRemoteUpdateStart onFailure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPDeviceOTA"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->m(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->l(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->val$otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->d(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/model/OTAStatus;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "getMvRemoteUpdateStart response null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    :goto_0
    const-string p1, "getMvRemoteUpdateStart onSuccess "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPDeviceOTA"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->m(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->l(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->n(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V

    return-void
.end method
