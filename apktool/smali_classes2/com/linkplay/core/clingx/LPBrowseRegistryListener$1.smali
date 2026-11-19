.class Lcom/linkplay/core/clingx/LPBrowseRegistryListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/request/LPRequestAction$IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceUpdate(Ljava/lang/String;Ljava/lang/String;Lorg/teleal/cling/model/meta/RemoteDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceItem:Lcom/linkplay/core/device/LPDevice;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/clingx/LPBrowseRegistryListener;Lcom/linkplay/core/device/LPDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$1;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/core/clingx/LPBrowseRegistryListener$1;->val$deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/linkplay/core/model/LPDeviceStatus;->setDeviceStatus(Ljava/lang/String;)V

    return-void
.end method
