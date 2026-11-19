.class Lcom/linkplay/alarm/LPDeviceAlarm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/alarm/LPDeviceAlarm;->getAlarms(Lcom/linkplay/alarm/LPAlarmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/linkplay/alarm/LPAlarmListener;


# direct methods
.method public constructor <init>(Lcom/linkplay/alarm/LPDeviceAlarm;Lcom/linkplay/alarm/LPAlarmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/linkplay/alarm/LPDeviceAlarm$1;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$1;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/alarm/LPAlarmListener;->onFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "AlarmContext"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$1;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/linkplay/alarm/LPAlarmListener;->onSuccess(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/linkplay/alarm/LPDeviceAlarm$1;->val$listener:Lcom/linkplay/alarm/LPAlarmListener;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AlarmContext Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/linkplay/alarm/LPAlarmListener;->onFail(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method
