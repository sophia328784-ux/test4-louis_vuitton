.class Lcom/github/druk/dnssd/DNSSDEmbedded$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/druk/dnssd/DNSSDEmbedded;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/druk/dnssd/DNSSDEmbedded;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/DNSSDEmbedded;)V
    .locals 0

    iput-object p1, p0, Lcom/github/druk/dnssd/DNSSDEmbedded$1;->this$0:Lcom/github/druk/dnssd/DNSSDEmbedded;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/github/druk/dnssd/DNSSDEmbedded;->nativeInit()I

    move-result v0

    const-class v1, Lcom/github/druk/dnssd/DNSSDEmbedded;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/github/druk/dnssd/DNSSDEmbedded$1;->this$0:Lcom/github/druk/dnssd/DNSSDEmbedded;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/github/druk/dnssd/DNSSDEmbedded;->access$002(Lcom/github/druk/dnssd/DNSSDEmbedded;Z)Z

    const-class v2, Lcom/github/druk/dnssd/DNSSDEmbedded;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/github/druk/dnssd/DNSSDEmbedded;->nativeLoop()I

    iget-object p0, p0, Lcom/github/druk/dnssd/DNSSDEmbedded$1;->this$0:Lcom/github/druk/dnssd/DNSSDEmbedded;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/github/druk/dnssd/DNSSDEmbedded;->access$002(Lcom/github/druk/dnssd/DNSSDEmbedded;Z)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
