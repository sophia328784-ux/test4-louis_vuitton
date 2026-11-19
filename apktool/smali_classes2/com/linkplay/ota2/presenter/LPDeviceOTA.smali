.class public Lcom/linkplay/ota2/presenter/LPDeviceOTA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_FAILED_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LPDeviceOTA"


# instance fields
.field private MAX_DOWNLOAD_TIME:J

.field private MAX_REBOOT_TIME:J

.field private MAX_REQUEST_TIMEOUT:J

.field private MAX_WRITE_TIME:J

.field private final REQUEST_TIME_INTERVAL:I

.field private deviceItem:Lcom/linkplay/core/device/LPDevice;

.field private failedCount:I

.field private isNotNeedRetry:Z

.field private lBeginTimer:J

.field private lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

.field private mHandler:Landroid/os/Handler;

.field private maxTimeout:J

.field private otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

.field private startDownloadTime:J

.field private startTime:J

.field private targetDSP:Ljava/lang/String;

.field private targetFWVersion:Ljava/lang/String;

.field private targetMCUVersion:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/device/LPDevice;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REQUEST_TIMEOUT:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->failedCount:I

    const-string v3, "1.0.0"

    iput-object v3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->version:Ljava/lang/String;

    new-instance v3, Lcom/linkplay/ota2/model/OTAStatus;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Lcom/linkplay/ota2/model/OTAStatus;-><init>(II)V

    iput-object v3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    const-wide/32 v3, 0x7fffffff

    iput-wide v3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    iput-boolean v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->isNotNeedRetry:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetFWVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetMCUVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetDSP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startDownloadTime:J

    const/16 v2, 0x1388

    iput v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->REQUEST_TIME_INTERVAL:I

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_DOWNLOAD_TIME:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REQUEST_TIMEOUT:J

    return-wide v0
.end method

.method public static bridge synthetic b(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->isNotNeedRetry:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lBeginTimer:J

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/model/OTAStatus;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Lcom/linkplay/ota2/presenter/LPOTAListener;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    return-object p0
.end method

.method private firmwareUpdateFailed(Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->isNotNeedRetry:Z

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    :cond_0
    return-void
.end method

.method private firmwareUpdateFinish(Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->isNotNeedRetry:Z

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForMac(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    const-string v1, "LPDeviceOTA"

    if-nez v0, :cond_1

    const-string v0, "otaFailed 000"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    const-string v0, "otaFailed 1111"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_2
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v1

    invoke-static {}, Lcom/linkplay/request/LPRequestAction;->getInstance()Lcom/linkplay/request/LPRequestAction;

    move-result-object v2

    new-instance v3, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$3;-><init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/ota2/model/OTAStatus;)V

    invoke-virtual {v2, v1, v3}, Lcom/linkplay/request/LPRequestAction;->getStatusEx(Lcom/linkplay/request/RequestItem;Lcom/linkplay/request/LPRequestAction$IRequestListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private firmwareUpdateTimeoutWithStatus(Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareUpdateFinish(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "   remain time "

    const-string v3, "  total time "

    const-string v4, "past"

    const-string v5, "LPDeviceOTA"

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_DOWNLOAD_TIME:J

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {v1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    :cond_3
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startDownloadTime:J

    sub-long/2addr v0, v6

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v7, v6

    long-to-float v6, v0

    mul-float/2addr v7, v6

    iget-wide v8, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    long-to-float v6, v8

    add-float/2addr v6, v7

    iget-wide v8, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    long-to-float p0, v8

    add-float/2addr v6, p0

    float-to-long v8, v6

    sub-long v10, v8, v0

    const-string p0, "  has downloaded "

    invoke-static {v0, v1, v4, p0}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  download time "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v10, v11}, Lcom/linkplay/ota2/model/OTAStatus;->setRemainTime(J)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    iget-wide v6, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    sub-long/2addr v0, v6

    iget-wide v6, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    iget-wide v8, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    add-long/2addr v6, v8

    sub-long v8, v6, v0

    invoke-virtual {p1, v8, v9}, Lcom/linkplay/ota2/model/OTAStatus;->setRemainTime(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "past "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    iput-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {v0}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    sub-long v6, v2, v0

    invoke-virtual {p1, v6, v7}, Lcom/linkplay/ota2/model/OTAStatus;->setRemainTime(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  total time"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "   remain time"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForMac(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p0, "getDeviceItemByMac device = null"

    invoke-static {v5, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareUpdateFinish(Lcom/linkplay/ota2/model/OTAStatus;)V

    :cond_a
    :goto_0
    return-void

    :cond_b
    :goto_1
    const-string v0, "otaFailed MV_UP_STATUS_DOWNLOAD_FAILED | MV_UP_STATUS_WRITE_FAILED"

    invoke-static {v5, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareUpdateFailed(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetFWVersion:Ljava/lang/String;

    return-object p0
.end method

.method private getDeviceUpdateStatus()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v2}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/linkplay/core/model/LPDeviceStatus;->getMAC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/linkplay/core/app/LPDeviceManager;->deviceForMac(Ljava/lang/String;)Lcom/linkplay/core/device/LPDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {v1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    invoke-static {v0, v1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/request/LPRequestUrl;->getMvRomDownloadV2StatusUrl(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    new-instance v2, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;

    invoke-direct {v2, p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$2;-><init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V

    invoke-virtual {v0, v1, v2}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetMCUVersion:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->failedCount:I

    return-void
.end method

.method private initOTAConfig(Lcom/linkplay/ota2/model/LPOTAConfiguration;)V
    .locals 9

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/linkplay/ota2/model/LPOTAConfiguration;

    invoke-direct {p1}, Lcom/linkplay/ota2/model/LPOTAConfiguration;-><init>()V

    :cond_1
    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getNewVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "0"

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v2

    :cond_3
    iput-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetFWVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->getMCUNewVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v0

    :cond_5
    :goto_0
    iput-object v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetMCUVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetFWVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_6

    iget-wide v3, p1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareWriteTime:J

    iget-wide v5, p1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->firmWareRebootTime:J

    goto :goto_1

    :cond_6
    move-wide v3, v1

    move-wide v5, v3

    :goto_1
    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetMCUVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-wide v7, p1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcuWriteTime:J

    add-long/2addr v3, v7

    iget-wide v7, p1, Lcom/linkplay/ota2/model/LPOTAConfiguration;->mcueRebootTime:J

    add-long/2addr v5, v7

    :cond_7
    cmp-long p1, v3, v1

    const-wide/32 v7, 0x1d4c0

    if-lez p1, :cond_8

    iput-wide v3, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    goto :goto_2

    :cond_8
    iput-wide v7, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_WRITE_TIME:J

    :goto_2
    cmp-long p1, v5, v1

    if-lez p1, :cond_9

    iput-wide v5, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    return-void

    :cond_9
    iput-wide v7, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->MAX_REBOOT_TIME:J

    return-void
.end method

.method public static bridge synthetic j(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lBeginTimer:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    return-void
.end method

.method public static bridge synthetic l(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startDownloadTime:J

    return-void
.end method

.method public static bridge synthetic m(Lcom/linkplay/ota2/presenter/LPDeviceOTA;J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    return-void
.end method

.method public static bridge synthetic n(Lcom/linkplay/ota2/presenter/LPDeviceOTA;)V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->getDeviceUpdateStatus()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->updateFirmwareStatus(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void
.end method

.method private updateFirmwareStatus(Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->firmwareUpdateTimeoutWithStatus(Lcom/linkplay/ota2/model/OTAStatus;)V

    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->updateUI(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void
.end method

.method private updateUI(Lcom/linkplay/ota2/model/OTAStatus;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    iget-wide v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->maxTimeout:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {p1, v4}, Lcom/linkplay/ota2/model/OTAStatus;->setUpdatePercent(I)V

    invoke-virtual {p1, v4}, Lcom/linkplay/ota2/model/OTAStatus;->setRebootPercent(I)V

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {v1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setDownloadPercent(I)V

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lastStatus:Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/linkplay/ota2/model/OTAStatus;->setProgress(I)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaStatusUpdated(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v1}, Lcom/linkplay/ota2/model/OTAStatus;->setDownloadPercent(I)V

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setUpdatePercent(I)V

    invoke-virtual {p1, v4}, Lcom/linkplay/ota2/model/OTAStatus;->setRebootPercent(I)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaStatusUpdated(Lcom/linkplay/ota2/model/OTAStatus;)V

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/linkplay/ota2/model/OTAStatus;->getStatus()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/linkplay/ota2/model/OTAStatus;->setDownloadPercent(I)V

    invoke-virtual {p1, v1}, Lcom/linkplay/ota2/model/OTAStatus;->setUpdatePercent(I)V

    invoke-virtual {p1, v0}, Lcom/linkplay/ota2/model/OTAStatus;->setRebootPercent(I)V

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/linkplay/ota2/presenter/LPOTAListener;->otaStatusUpdated(Lcom/linkplay/ota2/model/OTAStatus;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 3

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linkplay/core/model/LPDeviceStatus;->hasUpdate()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {p0}, Lcom/linkplay/core/device/LPDevice;->getDeviceStatus()Lcom/linkplay/core/model/LPDeviceStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/linkplay/core/model/LPDeviceStatus;->isBuildBackup()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public firmwareStartUpdate(Lcom/linkplay/ota2/model/LPOTAConfiguration;Lcom/linkplay/ota2/presenter/LPOTAListener;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->initOTAConfig(Lcom/linkplay/ota2/model/LPOTAConfiguration;)V

    iput-object p2, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->otaListener:Lcom/linkplay/ota2/presenter/LPOTAListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->lBeginTimer:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "firmwareStartUpdate targetFWVersion: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetFWVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  targetMCUVersion: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->targetMCUVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LPDeviceOTA"

    invoke-static {v0, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/linkplay/request/RequestItem$Builder;

    invoke-direct {p1}, Lcom/linkplay/request/RequestItem$Builder;-><init>()V

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v0, p1}, Ln00;->k(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->deviceItem:Lcom/linkplay/core/device/LPDevice;

    invoke-static {v0, p1}, Ln00;->l(Lcom/linkplay/core/device/LPDevice;Lcom/linkplay/request/RequestItem$Builder;)Lcom/linkplay/request/RequestItem;

    move-result-object p1

    invoke-static {p1}, Lcom/linkplay/network/HttpRequestUtils;->getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/linkplay/request/LPRequestUrl;->getMvRemoteUpdateStartUrl(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;

    invoke-direct {v1, p0, p2}, Lcom/linkplay/ota2/presenter/LPDeviceOTA$1;-><init>(Lcom/linkplay/ota2/presenter/LPDeviceOTA;Lcom/linkplay/ota2/presenter/LPOTAListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/linkplay/network/HttpRequestUtils;->get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/ota2/presenter/LPDeviceOTA;->version:Ljava/lang/String;

    return-object p0
.end method
