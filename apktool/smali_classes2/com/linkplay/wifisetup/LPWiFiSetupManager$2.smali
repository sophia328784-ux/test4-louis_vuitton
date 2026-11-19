.class Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/wifisetup/LPWiFiSetupManager;->connectToWiFi(Lcom/linkplay/wifisetup/LPApItem;Ljava/lang/String;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

.field final synthetic val$listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    iput-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->val$listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectToWiFi onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPWiFiSetupManager"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->val$listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    if-eqz p0, :cond_0

    const/16 p1, 0x3ea

    invoke-interface {p0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupListener;->LPWiFiSetupFailed(I)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "on response"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p1, "LPWiFiSetupManager"

    const-string v0, "connectToWiFi onSuccess"

    invoke-static {p1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    iget-object p1, p1, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    :cond_1
    iget-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    new-instance v0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    iget-object v1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    invoke-static {v1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->a(Lcom/linkplay/wifisetup/LPWiFiSetupManager;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->val$listener:Lcom/linkplay/wifisetup/LPWiFiSetupListener;

    invoke-direct {v0, v1, v2}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;-><init>(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/wifisetup/LPWiFiSetupListener;)V

    iput-object v0, p1, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$2;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->searchTimer:Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;

    invoke-virtual {p0}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$SearchTimer;->search()V

    return-void
.end method
