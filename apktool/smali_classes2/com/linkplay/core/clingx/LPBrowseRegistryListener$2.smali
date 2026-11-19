.class Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->getStreamServicesCapability(Lorg/teleal/cling/model/meta/Device;Lcom/linkplay/core/device/LPDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

.field final synthetic val$device:Lorg/teleal/cling/model/meta/Device;

.field final synthetic val$deviceItem:Lcom/linkplay/core/device/LPDevice;

.field final synthetic val$finalRequestCount:I


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;Lorg/teleal/cling/model/meta/Device;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    iput-object p2, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    iput-object p3, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$device:Lorg/teleal/cling/model/meta/Device;

    iput p4, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$finalRequestCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->this$0:Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    iget-object v0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$device:Lorg/teleal/cling/model/meta/Device;

    iget-object v1, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    iget p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$finalRequestCount:I

    invoke-static {p1, v1, v0, p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->b(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;Lorg/teleal/cling/model/meta/Device;I)V

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "StreamCapability"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    invoke-static {p1, v0}, Lcom/linkplay/lpmdpkit/utils/GsonCore;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$2;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0, p1}, Lcom/linkplay/core/device/LPDevice;->setDeviceStreamServices(Lcom/linkplay/lpmdpkit/bean/DeviceStreamServices;)V

    :cond_0
    return-void
.end method
