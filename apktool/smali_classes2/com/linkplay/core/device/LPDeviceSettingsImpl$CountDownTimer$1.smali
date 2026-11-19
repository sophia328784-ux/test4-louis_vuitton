.class Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->timeCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;->this$1:Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;->this$1:Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;

    iget-object v0, v0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;->this$1:Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    if-eqz p0, :cond_0

    const-string v0, "Ok"

    invoke-interface {p0, v0}, Lcom/linkplay/core/device/LPDeviceSettingsListener;->success(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getInstance()Lcom/linkplay/core/clingx/LPSearchControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/clingx/LPSearchControlPoint;->getLPBrowseListener()Lcom/linkplay/core/clingx/LPBrowseRegistryListener;

    move-result-object v0

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;->this$1:Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;

    iget-object p0, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->uuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linkplay/core/clingx/LPBrowseRegistryListener;->deviceRemove(Ljava/lang/String;)V

    return-void
.end method
