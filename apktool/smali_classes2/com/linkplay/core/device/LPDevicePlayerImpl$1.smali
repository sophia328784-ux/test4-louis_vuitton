.class Lcom/linkplay/core/device/LPDevicePlayerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->createQueue(Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

.field final synthetic val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

.field final synthetic val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-object p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/core/listener/LPDevicePlayerListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    iget-object v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$listener:Lcom/linkplay/core/listener/LPDevicePlayerListener;

    invoke-static {p1, v0, v1}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->f(Lcom/linkplay/core/device/LPDevicePlayerImpl;Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;Lcom/linkplay/core/listener/LPDevicePlayerListener;)V

    iget-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$1;->val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->b(Lcom/linkplay/core/device/LPDevicePlayerImpl;ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V

    return-void
.end method
