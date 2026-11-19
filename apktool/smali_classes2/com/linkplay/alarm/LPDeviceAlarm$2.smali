.class Lcom/linkplay/alarm/LPDeviceAlarm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/alarm/LPDeviceAlarm;->addAlarm(Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/alarm/LPDeviceAlarm;

.field final synthetic val$keyMapping:Ljava/lang/String;

.field final synthetic val$listener:Lcom/linkplay/alarm/LPAlarmListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/alarm/LPDeviceAlarm;Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->this$0:Lcom/linkplay/alarm/LPDeviceAlarm;

    iput-object p2, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->val$keyMapping:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/alarm/LPAlarmListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->this$0:Lcom/linkplay/alarm/LPDeviceAlarm;

    iget-object v0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->val$keyMapping:Ljava/lang/String;

    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$2;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    invoke-static {p1, v0, p0}, Lcom/linkplay/alarm/LPDeviceAlarm;->a(Lcom/linkplay/alarm/LPDeviceAlarm;Ljava/lang/String;Lcom/linkplay/alarm/LPAlarmListener;)V

    return-void
.end method
