.class public Lcom/linkplay/ota2/model/OTAStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MV_UP_STATUS_COMPLETE:I = 0x6

.field public static final MV_UP_STATUS_DOWNLOAD_FAILED:I = 0x2

.field public static final MV_UP_STATUS_DOWNLOAD_START:I = 0x1

.field public static final MV_UP_STATUS_NOT_IN_OTA:I = 0x8

.field public static final MV_UP_STATUS_UNKNOWN:I = 0x0

.field public static final MV_UP_STATUS_WRITE_FAILED:I = 0x5

.field public static final MV_UP_STATUS_WRITE_FINISH:I = 0x4

.field public static final MV_UP_STATUS_WRITE_START:I = 0x3


# instance fields
.field private downloadPercent:I

.field private progress:I

.field private rebootPercent:I

.field public remainTime:J

.field private status:I

.field private updatePercent:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/linkplay/ota2/model/OTAStatus;->downloadPercent:I

    iput v0, p0, Lcom/linkplay/ota2/model/OTAStatus;->updatePercent:I

    iput v0, p0, Lcom/linkplay/ota2/model/OTAStatus;->rebootPercent:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/linkplay/ota2/model/OTAStatus;->remainTime:J

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->status:I

    iput p2, p0, Lcom/linkplay/ota2/model/OTAStatus;->progress:I

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/linkplay/ota2/model/OTAStatus;
    .locals 4

    const-string v0, "progress"

    const-string v1, "status"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/linkplay/ota2/model/OTAStatus;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/linkplay/ota2/model/OTAStatus;-><init>(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2
.end method


# virtual methods
.method public getDownloadPercent()I
    .locals 0

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->downloadPercent:I

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->progress:I

    return p0
.end method

.method public getRebootPercent()I
    .locals 0

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->rebootPercent:I

    return p0
.end method

.method public getRemainTime()J
    .locals 2

    iget-wide v0, p0, Lcom/linkplay/ota2/model/OTAStatus;->remainTime:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->status:I

    return p0
.end method

.method public getUpdatePercent()I
    .locals 0

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->updatePercent:I

    return p0
.end method

.method public setDownloadPercent(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->downloadPercent:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->progress:I

    return-void
.end method

.method public setRebootPercent(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->rebootPercent:I

    return-void
.end method

.method public setRemainTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->remainTime:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->status:I

    return-void
.end method

.method public setUpdatePercent(I)V
    .locals 0

    iput p1, p0, Lcom/linkplay/ota2/model/OTAStatus;->updatePercent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTAStatus{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/linkplay/ota2/model/OTAStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/ota2/model/OTAStatus;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/ota2/model/OTAStatus;->downloadPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updatePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/ota2/model/OTAStatus;->updatePercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rebootPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/linkplay/ota2/model/OTAStatus;->rebootPercent:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
