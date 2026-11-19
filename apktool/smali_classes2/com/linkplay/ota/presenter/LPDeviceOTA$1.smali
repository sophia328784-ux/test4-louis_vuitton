.class Lcom/linkplay/ota/presenter/LPDeviceOTA$1;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/ota/presenter/LPDeviceOTA;->startUpdate(Lcom/linkplay/ota/presenter/LPOTAListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

.field final synthetic val$listener:Lcom/linkplay/ota/presenter/LPOTAListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/ota/presenter/LPDeviceOTA;Lcom/linkplay/ota/presenter/LPOTAListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    iput-object p2, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->val$listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-static {v0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->a(Lcom/linkplay/ota/presenter/LPDeviceOTA;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->b(Lcom/linkplay/ota/presenter/LPDeviceOTA;Ljava/util/Timer;)V

    :cond_0
    iget-object p0, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->val$listener:Lcom/linkplay/ota/presenter/LPOTAListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/linkplay/ota/presenter/LPOTAListener;->otaFail(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "on response"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->a(Lcom/linkplay/ota/presenter/LPDeviceOTA;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->b(Lcom/linkplay/ota/presenter/LPDeviceOTA;Ljava/util/Timer;)V

    :cond_1
    iget-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->b(Lcom/linkplay/ota/presenter/LPDeviceOTA;Ljava/util/Timer;)V

    iget-object p1, p0, Lcom/linkplay/ota/presenter/LPDeviceOTA$1;->this$0:Lcom/linkplay/ota/presenter/LPDeviceOTA;

    invoke-static {p1}, Lcom/linkplay/ota/presenter/LPDeviceOTA;->a(Lcom/linkplay/ota/presenter/LPDeviceOTA;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/linkplay/ota/presenter/LPDeviceOTA$1$1;

    invoke-direct {v1, p0}, Lcom/linkplay/ota/presenter/LPDeviceOTA$1$1;-><init>(Lcom/linkplay/ota/presenter/LPDeviceOTA$1;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
