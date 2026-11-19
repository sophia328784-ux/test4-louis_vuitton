.class public final Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->initDiscoveryListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDiscoveryStarted:serviceType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onDiscoveryStopped:serviceType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onServiceFound:serviceInfo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getMServiceType$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getMNsdManager$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Landroid/net/nsd/NsdManager;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-direct {v1, p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;-><init>(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    :cond_2
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onServiceLost->NsdServiceInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LINKPLAY_SDK"

    invoke-static {v1, v0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0, p1}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$serviceLost(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onStartDiscoveryFailed:serviceType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",errorCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onStopDiscoveryFailed:serviceType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",errorCode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LINKPLAY_SDK"

    invoke-static {p2, p1}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p1}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getMNsdManager$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Landroid/net/nsd/NsdManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    :cond_0
    return-void
.end method
