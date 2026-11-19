.class public Lcom/networkbench/agent/impl/session/SpanDatas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpanDatas"

.field private static eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static transactionSpanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Span;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field shoulEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Event;",
            ">;"
        }
    .end annotation
.end field

.field shouldSendSpan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/networkbench/agent/impl/session/Event;)V
    .locals 1

    if-eqz p1, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_ERROR_COUNT:I

    if-gt p0, v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/Event;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TingyunSDK_event"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "SpanDatas add event to harvestData :"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/type/Harvestable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addEvent debuglog has error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public addTransactionSpan(Lcom/networkbench/agent/impl/session/Span;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string p0, "SpanDatas"

    const-string v0, "add span to harvestData"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget v0, Lcom/networkbench/agent/impl/harvest/ConfigurationName;->MAX_ERROR_COUNT:I

    if-gt p0, v0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/Span;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TingyunSDK_transaction"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p0, "SpanDatas add span to harvestData :"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/type/Harvestable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addTransactionSpan debuglog has error :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public checkData()Z
    .locals 0

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/SpanDatas;->checkData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shouldSendSpan:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shoulEventList:Ljava/util/List;

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shouldSendSpan:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shoulEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shouldSendSpan:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/session/Span;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/session/Span;->formatInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shoulEventList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/session/Event;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/session/Event;->formatInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEventList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Event;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    return-object p0
.end method

.method public getTransactionSpanList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/session/Span;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    return-object p0
.end method

.method public removeData()V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shouldSendSpan:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/networkbench/agent/impl/session/SpanDatas;->transactionSpanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/SpanDatas;->shoulEventList:Ljava/util/List;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/session/SpanDatas;->eventList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/session/SpanDatas;->removeData()V

    return-void
.end method
