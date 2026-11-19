.class Lcom/linkplay/core/device/LPDevicePlayerImpl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->next(Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$7;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$7;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Success"

    :goto_0
    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$7;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onSuccess(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
