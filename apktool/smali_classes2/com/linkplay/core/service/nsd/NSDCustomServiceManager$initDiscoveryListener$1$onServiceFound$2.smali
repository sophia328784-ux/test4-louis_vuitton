.class public final Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
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

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 1

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onStopDiscoveryFailed:serviceInfo="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",errorCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LINKPLAY_SDK"

    invoke-static {p1, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {v1}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getMServiceType$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wiimu/service/online_service/util/a;->b(Landroid/net/nsd/NsdServiceInfo;)Lh/a;

    move-result-object p1

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager$initDiscoveryListener$1$onServiceFound$2;->this$0:Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;

    invoke-static {p0}, Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;->access$getNSDTAG$p(Lcom/linkplay/core/service/nsd/NSDCustomServiceManager;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lh/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " onServiceResolved->NsdServiceInfo="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LINKPLAY_SDK"

    invoke-static {v0, p0}, Lcom/linkplay/log/LinkplayLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/wiimu/service/online_service/util/a;->a()Lcom/android/wiimu/service/online_service/util/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wiimu/service/online_service/util/a;->b(Lh/a;)V

    :cond_1
    return-void
.end method
