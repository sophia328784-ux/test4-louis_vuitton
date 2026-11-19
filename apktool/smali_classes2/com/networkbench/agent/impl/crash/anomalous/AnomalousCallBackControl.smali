.class public Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl$a;
    }
.end annotation


# static fields
.field public static final ANR:I = 0x2

.field public static final CRASH:I = 0x1

.field public static final HTTPERROR:I = 0x4

.field public static final PAGEKARTUN:I = 0x8


# instance fields
.field private customEventFeedBack:Lcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;

.field private errorIdGenerateBlock:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkEvenCallBack(I)Z
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->type:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl$a;->a:Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    return-object v0
.end method


# virtual methods
.method public answerAnomalousCallBack(ILcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/data/AnomalousData;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/AnomalousData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->setType(I)V

    invoke-virtual {v0, p4}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThrowable(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setStacktrace(Lcom/networkbench/com/google/gson/JsonArray;)V

    invoke-virtual {v0, p3}, Lcom/networkbench/agent/impl/data/AnomalousData;->setAllStacktrace(Lcom/networkbench/com/google/gson/JsonArray;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThreadId(J)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThreadName(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setBuildId(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->customEventFeedBack(Lcom/networkbench/agent/impl/data/AnomalousData;I)V

    return-void
.end method

.method public answerAnomalousCallBack(ILjava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/networkbench/agent/impl/data/AnomalousData;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/AnomalousData;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/AnomalousData;->setType(I)V

    .line 52
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThrowable(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p3}, Lcom/networkbench/agent/impl/data/AnomalousData;->setAllStacktrace(Lcom/networkbench/com/google/gson/JsonArray;)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThreadId(J)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setThreadName(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/AnomalousData;->setBuildId(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p4}, Lcom/networkbench/agent/impl/data/AnomalousData;->setImageUuid(Lcom/networkbench/com/google/gson/JsonArray;)V

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->customEventFeedBack(Lcom/networkbench/agent/impl/data/AnomalousData;I)V

    return-void
.end method

.method public customEventFeedBack(Lcom/networkbench/agent/impl/data/AnomalousData;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->checkEvenCallBack(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->customEventFeedBack:Lcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;->dataTypeFeedBack(Lcom/networkbench/agent/impl/data/AnomalousData;)V

    :cond_0
    return-void
.end method

.method public getErrorIdGenerateBlock()Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->errorIdGenerateBlock:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;

    return-object p0
.end method

.method public getUuidCallBack()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->errorIdGenerateBlock:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;

    invoke-interface {p0}, Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;->setErrorIdGenerateBlock()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAnomalousDataFeedBack(ILcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;)V
    .locals 0

    iput-object p2, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->customEventFeedBack:Lcom/networkbench/agent/impl/instrumentation/TingyunAnomalousDataFeedBack;

    iput p1, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->type:I

    return-void
.end method

.method public setErrorIdGenerateBlock(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->errorIdGenerateBlock:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;

    return-void
.end method
