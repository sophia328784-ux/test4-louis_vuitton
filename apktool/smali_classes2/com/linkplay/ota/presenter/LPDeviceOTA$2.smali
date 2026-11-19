.class Lcom/linkplay/ota/presenter/LPDeviceOTA$2;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota/presenter/LPDeviceOTA;->getUpdateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota/presenter/LPDeviceOTA;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/ota/presenter/LPOTAListener;->otaFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "on response"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lcom/linkplay/ota/model/OtaStatus;

    invoke-direct {p1}, Lcom/linkplay/ota/model/OtaStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/linkplay/ota/model/OtaStatus;->convert(Ljava/lang/String;)Lcom/linkplay/ota/model/OtaStatus;

    invoke-virtual {p1}, Lcom/linkplay/ota/model/OtaStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-static {v0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->a(Lcom/linkplay/ota/presenter/LPDeviceOTA;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->b(Lcom/linkplay/ota/presenter/LPDeviceOTA;Ljava/util/Timer;)V

    :cond_1
    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$2;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA;->listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/ota/presenter/LPOTAListener;->otaStatus(Lcom/linkplay/ota/model/OtaStatus;)V

    :cond_2
    return-void
.end method
