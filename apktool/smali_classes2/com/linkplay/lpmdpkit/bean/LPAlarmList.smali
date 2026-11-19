.class public Lcom/linkplay/lpmdpkit/bean/LPAlarmList;
.super Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/bean/LPAlarmList$LPAlarmTrigger;,
        Lcom/linkplay/lpmdpkit/bean/LPAlarmList$LPAlarmType;
    }
.end annotation


# instance fields
.field private alarmIndex:Ljava/lang/String;

.field private alarmName:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private enable:Z

.field private repeat:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private trigger:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private volume:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/bean/LPPlayMusicList;-><init>()V

    const-string v0, "0:0:0:0:0:0:0"

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->repeat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlarmIndex()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->alarmIndex:Ljava/lang/String;

    return-object p0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->alarmName:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->context:Ljava/lang/String;

    return-object p0
.end method

.method public getRepeat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->repeat:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->time:Ljava/lang/String;

    return-object p0
.end method

.method public getTrigger()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->trigger:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->volume:Ljava/lang/String;

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->enable:Z

    return p0
.end method

.method public setAlarmIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->alarmIndex:Ljava/lang/String;

    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->alarmName:Ljava/lang/String;

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->context:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->enable:Z

    return-void
.end method

.method public setRepeat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->repeat:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->time:Ljava/lang/String;

    return-void
.end method

.method public setTrigger(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->trigger:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->type:Ljava/lang/String;

    return-void
.end method

.method public setVolume(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->volume:Ljava/lang/String;

    return-void
.end method
