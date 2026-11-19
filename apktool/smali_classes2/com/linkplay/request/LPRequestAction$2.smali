.class Lcom/linkplay/request/LPRequestAction$2;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/request/LPRequestAction;->setDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

.field final synthetic val$lpDevice:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/request/LPRequestAction;Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lcom/linkplay/network/IOkHttpRequestCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/request/LPRequestAction$2;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/request/LPRequestAction$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/linkplay/request/LPRequestAction$2;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$2;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/request/LPRequestAction$2;->val$lpDevice:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/request/LPRequestAction$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linkplay/core/model/LPDeviceStatus;->setFriendlyName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/request/LPRequestAction$2;->val$listener:Lcom/linkplay/network/IOkHttpRequestCallback;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V

    :cond_0
    return-void
.end method
