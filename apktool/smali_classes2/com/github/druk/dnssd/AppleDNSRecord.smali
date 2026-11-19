.class Lcom/github/druk/dnssd/AppleDNSRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/DNSRecord;


# instance fields
.field protected fOwner:Lcom/github/druk/dnssd/AppleService;

.field protected fRecord:J


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/AppleService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/druk/dnssd/AppleDNSRecord;->fOwner:Lcom/github/druk/dnssd/AppleService;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/druk/dnssd/AppleDNSRecord;->fRecord:J

    return-void
.end method


# virtual methods
.method public native Remove()I
.end method

.method public ThrowOnErr(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/github/druk/dnssd/AppleDNSSDException;

    invoke-direct {p0, p1}, Lcom/github/druk/dnssd/AppleDNSSDException;-><init>(I)V

    throw p0
.end method

.method public native Update(I[BI)I
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/druk/dnssd/AppleDNSRecord;->Remove()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/druk/dnssd/AppleDNSRecord;->ThrowOnErr(I)V

    return-void
.end method

.method public update(I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/druk/dnssd/AppleDNSRecord;->Update(I[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/druk/dnssd/AppleDNSRecord;->ThrowOnErr(I)V

    return-void
.end method
