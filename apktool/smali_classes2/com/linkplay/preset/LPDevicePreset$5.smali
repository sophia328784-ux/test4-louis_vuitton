.class Lcom/linkplay/preset/LPDevicePreset$5;
.super Lcom/linkplay/network/IOkHttpRequestCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/preset/LPDevicePreset;->playPreset(ILcom/linkplay/preset/LPPresetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/preset/LPPresetListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/preset/LPDevicePreset;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 0

    iput-object p2, p0, Lcom/linkplay/preset/LPDevicePreset$5;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    invoke-direct {p0}, Lcom/linkplay/network/IOkHttpRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$5;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "err"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/linkplay/preset/LPDevicePreset$5;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$5;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/linkplay/preset/LPPresetListener;->onSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
