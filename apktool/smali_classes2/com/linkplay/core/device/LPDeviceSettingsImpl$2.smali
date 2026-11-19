.class Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDeviceSettingsImpl;->switchInputSource(Lcom/linkplay/core/status/LPInputSource;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onFailure(Ljava/lang/Exception;)V

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->failure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/linkplay/network/IOkHttpRequestCallback;->onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V

    iget-object v0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$2;->val$listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    invoke-interface {p0, v0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->success(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
