.class final Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmContextHandlerImpl"
.end annotation


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-direct {v0}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "Time"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Trigger"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Once"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setTrigger(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p3, "EveryWeek"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setTrigger(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p3, "EveryDay"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setTrigger(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Enable"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setEnable(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p3, p2}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setEnable(Z)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "DaysSpecial"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p3, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setRepeat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "Context"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p3, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setContext(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string p1, "Volume"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p3, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setVolume(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "Method"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PlayQueue"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p3, "PlayKeyMap"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p1, p3}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    invoke-virtual {p3, p1}, Lcom/linkplay/lpmdpkit/bean/LPAlarmList;->setAlarmName(Ljava/lang/String;)V

    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getAlarmClockList()Lcom/linkplay/lpmdpkit/bean/LPAlarmList;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->mLpAlarmList:Lcom/linkplay/lpmdpkit/bean/LPAlarmList;

    return-object p0
.end method

.method public startDocument()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/utils/LpAlarmUtil$AlarmContextHandlerImpl;->buf:Ljava/lang/StringBuffer;

    return-void
.end method
