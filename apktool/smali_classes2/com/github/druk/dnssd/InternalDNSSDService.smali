.class Lcom/github/druk/dnssd/InternalDNSSDService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/DNSSDService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;
    }
.end annotation


# instance fields
.field private isStopped:Z

.field private final listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

.field private final originalDNSSDService:Lcom/github/druk/dnssd/DNSSDService;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;Lcom/github/druk/dnssd/DNSSDService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->isStopped:Z

    iput-object p1, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDService;

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDService;

    invoke-interface {v0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->isStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

    invoke-interface {v0}, Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;->onServiceStopped()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDService;->isStopped:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
