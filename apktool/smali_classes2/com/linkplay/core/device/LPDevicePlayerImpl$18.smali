.class Lcom/linkplay/core/device/LPDevicePlayerImpl$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->insertNext(Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

.field final synthetic val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

.field final synthetic val$queueContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->val$queueContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    const-string v0, "CurrentIndex"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->val$queueContext:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$18;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-static {v0, v1, p1, p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->c(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;ILcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method
