.class Lcom/linkplay/core/device/LPDevicePlayerImpl$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->removeTrackInQueue(Ljava/lang/String;IILcom/linkplay/core/listener/LPDevicePlayerListener;)V
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

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->val$queueContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->val$queueContext:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$16;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-static {p1, v0, p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->d(Lcom/linkplay/core/device/LPDevicePlayerImpl;Ljava/lang/String;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    return-void
.end method
