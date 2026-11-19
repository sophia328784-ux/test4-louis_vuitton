.class final Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/core/device/LPDeviceSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountDownTimer"
.end annotation


# instance fields
.field final MAX_COUNT:I

.field count:Ljava/util/concurrent/atomic/AtomicInteger;

.field listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

.field uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl;Ljava/lang/String;Lcom/linkplay/core/device/LPDeviceSettingsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x3

    iput p1, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->MAX_COUNT:I

    iput-object p2, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;->listener:Lcom/linkplay/core/device/LPDeviceSettingsListener;

    return-void
.end method


# virtual methods
.method public timeCountDown()V
    .locals 6

    new-instance v1, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;

    invoke-direct {v1, p0}, Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer$1;-><init>(Lcom/linkplay/core/device/LPDeviceSettingsImpl$CountDownTimer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method
