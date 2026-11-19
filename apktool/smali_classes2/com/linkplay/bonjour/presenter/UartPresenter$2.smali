.class Lcom/linkplay/bonjour/presenter/UartPresenter$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/UartPresenter;->startTimer(Ljava/util/concurrent/atomic/AtomicBoolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

.field final synthetic val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$200(Lcom/linkplay/bonjour/presenter/UartPresenter;)Lcom/linkplay/bonjour/model/HeartBeat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/HeartBeat;->getHeart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/HeartBeat;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    invoke-static {v1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$300(Lcom/linkplay/bonjour/presenter/UartPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  heartbeatTimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UartPresenter"

    invoke-static {v1, v0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Lcom/linkplay/bonjour/presenter/UartPresenter;->access$400(Lcom/linkplay/bonjour/presenter/UartPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter$2;->this$0:Lcom/linkplay/bonjour/presenter/UartPresenter;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/UartPresenter;->iUartPresenter:Lcom/linkplay/bonjour/presenter/IUartPresenter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/linkplay/bonjour/presenter/IUartPresenter;->heartbeatTimeout()V

    :cond_0
    return-void
.end method
