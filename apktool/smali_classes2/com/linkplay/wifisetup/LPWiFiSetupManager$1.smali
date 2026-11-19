.class Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/wifisetup/LPWiFiSetupManager;->getApList(Lcom/linkplay/wifisetup/LPApListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

.field final synthetic val$listener:Lcom/linkplay/wifisetup/LPApListListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Lcom/linkplay/wifisetup/LPApListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    iput-object p2, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->val$listener:Lcom/linkplay/wifisetup/LPApListListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getApList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPWiFiSetupManager"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->val$listener:Lcom/linkplay/wifisetup/LPApListListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/linkplay/wifisetup/LPApListListener;->LPApList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "err"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "getApList onSuccess:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LPWiFiSetupManager"

    invoke-static {v1, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->this$0:Lcom/linkplay/wifisetup/LPWiFiSetupManager;

    invoke-static {p1, v0}, Lcom/linkplay/wifisetup/LPWiFiSetupManager;->b(Lcom/linkplay/wifisetup/LPWiFiSetupManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/wifisetup/LPWiFiSetupManager$1;->val$listener:Lcom/linkplay/wifisetup/LPApListListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/linkplay/wifisetup/LPApListListener;->LPApList(Ljava/util/List;)V

    :cond_1
    return-void
.end method
