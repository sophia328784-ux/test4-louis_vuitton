.class Lcom/linkplay/bonjour/presenter/LPServiceManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/bonjour/presenter/IUartPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->startConnection(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

.field final synthetic val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    iput-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionSuccessful(Lcom/linkplay/bonjour/presenter/UartPresenter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$url:Ljava/lang/String;

    const-string v2, " connectionSuccessful"

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/linkplay/bonjour/manage/UartManager;->add(Ljava/lang/String;Lcom/linkplay/bonjour/presenter/UartPresenter;)V

    :cond_0
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-static {p1, v0}, Lcom/linkplay/bonjour/manage/ServiceManager;->add(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-interface {p1, v0}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_1
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-interface {p1, p0}, Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_2
    return-void
.end method

.method public heartbeatTimeout()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$url:Ljava/lang/String;

    const-string v2, " heartbeatTimeout"

    const-string v3, "LPServiceManager"

    invoke-static {v0, v1, v2, v3}, Ln00;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-static {v0, p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1600(Lcom/linkplay/bonjour/presenter/LPServiceManager;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    return-void
.end method

.method public onException(Ljava/lang/Exception;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {v1}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | uuid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$4;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-virtual {p0}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | error:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPServiceManager"

    invoke-static {p1, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public receivedMessage(Ljava/lang/String;)V
    .locals 2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm:ss"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
