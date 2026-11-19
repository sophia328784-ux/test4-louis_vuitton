.class Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota2/presenter/LPDeviceOTA;->getDeviceUpdateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMvRomDownloadV2Status onFailure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPDeviceOTA"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->d(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/model/OTAStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->o(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/model/OTAStatus;)V

    iget-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->e(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$2;

    invoke-direct {v0, p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$2;-><init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->i(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "getMvRomDownloadStatus response null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->onFailure(Ljava/lang/Exception;)V

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
    const-string p1, "getMvRomDownloadV2Status onSuccess "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LPDeviceOTA"

    invoke-static {v1, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/linkplay/ota2/model/OTAStatus;->convert(Ljava/lang/String;)Lcom/linkplay/ota2/model/OTAStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->c(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->a(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->m(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->d(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/model/OTAStatus;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->j(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    :cond_2
    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->o(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/model/OTAStatus;)V

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->e(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$1;

    invoke-direct {v1, p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2$1;-><init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->d(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/model/OTAStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota2/presenter/LPDeviceOTA;

    invoke-static {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->k(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/model/OTAStatus;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->m(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V

    :cond_4
    :goto_1
    return-void
.end method
