.class Lcom/linkplay/preset/LPDevicePreset$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/preset/LPDevicePreset;->setPreset(Ljava/lang/String;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/preset/LPDevicePreset;

.field final synthetic val$keyMappingQueue:Ljava/lang/String;

.field final synthetic val$listener:Lcom/linkplay/preset/LPPresetListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/preset/LPDevicePreset;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/preset/LPDevicePreset$1;->this$0:Lcom/linkplay/preset/LPDevicePreset;

    iput-object p2, p0, Lcom/linkplay/preset/LPDevicePreset$1;->val$keyMappingQueue:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/preset/LPDevicePreset$1;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$1;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/preset/LPPresetListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/linkplay/preset/LPDevicePreset$1;->this$0:Lcom/linkplay/preset/LPDevicePreset;

    iget-object v0, p0, Lcom/linkplay/preset/LPDevicePreset$1;->val$keyMappingQueue:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/preset/LPDevicePreset$1;->val$listener:Lcom/linkplay/preset/LPPresetListener;

    invoke-static {p1, v0, p0}, Lcom/linkplay/preset/LPDevicePreset;->a(Lcom/linkplay/preset/LPDevicePreset;Ljava/lang/String;Lcom/linkplay/preset/LPPresetListener;)V

    return-void
.end method
