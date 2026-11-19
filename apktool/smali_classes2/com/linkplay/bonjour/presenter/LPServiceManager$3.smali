.class Lcom/linkplay/bonjour/presenter/LPServiceManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/bonjour/presenter/LPServiceManager;->queryRecord(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private queryResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$service:Lcom/linkplay/bonjour/model/LinkPlayService;


# direct methods
.method public constructor <init>(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iput-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    iput-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->queryResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public operationFailed(Lcom/github/druk/dnssd/DNSSDService;I)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->queryResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "queryRecord operationFailed errorCode: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LPServiceManager"

    invoke-static {p1, p0}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public queryAnswered(Lcom/github/druk/dnssd/DNSSDService;IILjava/lang/String;II[BI)V
    .locals 1

    const-string p1, "LPServiceManager"

    iget-object p2, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->queryResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_5

    :try_start_0
    invoke-static {p7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {v0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getByAddress Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    :goto_0
    new-instance p3, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    iget-object v0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$service:Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-direct {p3, v0}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;-><init>(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    invoke-virtual {p3, p4}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrtype(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p6}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrclass(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p7}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rdata([B)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p8}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ttl(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ip(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    move-result-object p2

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p4}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->time(Ljava/util/Date;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;

    invoke-virtual {p3}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->build()Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p4}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " queryAnswered: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/linkplay/bonjour/utils/BonjourLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/linkplay/bonjour/config/LinkplayConfig;->bResolveFromCache:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1200(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/db/LinkplayDatebase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/linkplay/bonjour/db/LinkplayDatebase;->save(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_0
    sget-boolean p1, Lcom/linkplay/bonjour/config/LinkplayConfig;->bServiceAddByConnectSetup:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1300(Lcom/linkplay/bonjour/presenter/LPServiceManager;Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    goto :goto_1

    :cond_1
    const-string p1, " foreground "

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, " wificonnected "

    iget-object p3, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->val$from:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1400(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/manage/CompareTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/linkplay/bonjour/manage/CompareTimer;->remove(Lcom/linkplay/bonjour/model/LinkPlayService;)Lcom/linkplay/bonjour/model/LinkPlayService;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceReady(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_3
    invoke-virtual {p2}, Lcom/linkplay/bonjour/model/LinkPlayService;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/linkplay/bonjour/manage/ServiceManager;->add(Ljava/lang/String;Lcom/linkplay/bonjour/model/LinkPlayService;)V

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$700(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/linkplay/bonjour/presenter/LPServiceCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_4
    iget-object p1, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p1}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/linkplay/bonjour/presenter/LPServiceManager$3;->this$0:Lcom/linkplay/bonjour/presenter/LPServiceManager;

    invoke-static {p0}, Lcom/linkplay/bonjour/presenter/LPServiceManager;->access$1500(Lcom/linkplay/bonjour/presenter/LPServiceManager;)Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/linkplay/bonjour/presenter/LPServiceAddCallback;->LPServiceAdd(Lcom/linkplay/bonjour/model/LinkPlayService;)V

    :cond_5
    :goto_1
    return-void
.end method
