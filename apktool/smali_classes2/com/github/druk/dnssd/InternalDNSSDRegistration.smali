.class Lcom/github/druk/dnssd/InternalDNSSDRegistration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/DNSSDRegistration;


# instance fields
.field private isStopped:Z

.field private final listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

.field private final originalDNSSDService:Lcom/github/druk/dnssd/DNSSDRegistration;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;Lcom/github/druk/dnssd/DNSSDRegistration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->isStopped:Z

    iput-object p1, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

    iput-object p2, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDRegistration;

    return-void
.end method


# virtual methods
.method public addRecord(II[BI)Lcom/github/druk/dnssd/DNSRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    iget-object p0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDRegistration;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/github/druk/dnssd/DNSSDRegistration;->addRecord(II[BI)Lcom/github/druk/dnssd/DNSRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTXTRecord()Lcom/github/druk/dnssd/DNSRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    iget-object p0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDRegistration;

    invoke-interface {p0}, Lcom/github/druk/dnssd/DNSSDRegistration;->getTXTRecord()Lcom/github/druk/dnssd/DNSRecord;

    move-result-object p0

    return-object p0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->originalDNSSDService:Lcom/github/druk/dnssd/DNSSDRegistration;

    invoke-interface {v0}, Lcom/github/druk/dnssd/DNSSDService;->stop()V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->isStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->listener:Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;

    invoke-interface {v0}, Lcom/github/druk/dnssd/InternalDNSSDService$DnssdServiceListener;->onServiceStopped()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/druk/dnssd/InternalDNSSDRegistration;->isStopped:Z

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
