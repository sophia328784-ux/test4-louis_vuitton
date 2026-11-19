.class public Lcom/linkplay/lpmdpkit/bean/LPAlarmData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private backupQueue:Ljava/lang/String;

.field private keyMapping:Ljava/lang/String;

.field private queueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->backupQueue:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->keyMapping:Ljava/lang/String;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->queueName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBackupQueue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->backupQueue:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyMapping()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->keyMapping:Ljava/lang/String;

    return-object p0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->queueName:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupQueue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->backupQueue:Ljava/lang/String;

    return-void
.end method

.method public setKeyMapping(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->keyMapping:Ljava/lang/String;

    return-void
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmData;->queueName:Ljava/lang/String;

    return-void
.end method
