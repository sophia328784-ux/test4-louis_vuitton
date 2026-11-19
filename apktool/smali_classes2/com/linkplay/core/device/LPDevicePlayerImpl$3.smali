.class Lcom/linkplay/core/device/LPDevicePlayerImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDevicePlayerImpl;->appendTracks(ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

.field final synthetic val$index:I

.field final synthetic val$isTail:Z

.field final synthetic val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevicePlayerImpl;ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iput-boolean p2, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$isTail:Z

    iput p3, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$index:I

    iput-object p4, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    const-string p0, "LINKPLAY_SDK"

    const-string p1, "append queue failed"

    invoke-static {p0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->this$0:Lcom/linkplay/core/device/LPDevicePlayerImpl;

    iget-boolean v0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$isTail:Z

    iget v1, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$index:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/linkplay/core/device/LPDevicePlayerImpl$3;->val$mediaData:Lcom/linkplay/lpmdpkit/bean/LPPlayMediaData;

    invoke-static {p1, v0, v1, p0}, Lcom/linkplay/core/device/LPDevicePlayerImpl;->b(Lcom/linkplay/core/device/LPDevicePlayerImpl;ZILcom/linkplay/lpmdpkit/bean/LPPlayMediaData;)V

    return-void
.end method
