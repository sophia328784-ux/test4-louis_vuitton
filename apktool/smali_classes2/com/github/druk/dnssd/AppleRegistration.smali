.class Lcom/github/druk/dnssd/AppleRegistration;
.super Lcom/github/druk/dnssd/AppleService;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/DNSSDRegistration;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLcom/github/druk/dnssd/InternalRegisterListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    invoke-direct {p0, p9}, Lcom/github/druk/dnssd/AppleService;-><init>(Lcom/github/druk/dnssd/BaseListener;)V

    move v0, p2

    move p2, p1

    move p1, v0

    invoke-virtual/range {p0 .. p8}, Lcom/github/druk/dnssd/AppleRegistration;->BeginRegister(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/druk/dnssd/AppleService;->ThrowOnErr(I)V

    sget-boolean p1, Lcom/github/druk/dnssd/AppleDNSSD;->hasAutoCallbacks:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public native AddRecord(II[BILcom/github/druk/dnssd/AppleDNSRecord;)I
.end method

.method public native BeginRegister(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)I
.end method

.method public addRecord(II[BI)Lcom/github/druk/dnssd/DNSRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance v5, Lcom/github/druk/dnssd/AppleDNSRecord;

    invoke-direct {v5, p0}, Lcom/github/druk/dnssd/AppleDNSRecord;-><init>(Lcom/github/druk/dnssd/AppleService;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/github/druk/dnssd/AppleRegistration;->AddRecord(II[BILcom/github/druk/dnssd/AppleDNSRecord;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/github/druk/dnssd/AppleService;->ThrowOnErr(I)V

    return-object v5
.end method

.method public getTXTRecord()Lcom/github/druk/dnssd/DNSRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance v0, Lcom/github/druk/dnssd/AppleDNSRecord;

    invoke-direct {v0, p0}, Lcom/github/druk/dnssd/AppleDNSRecord;-><init>(Lcom/github/druk/dnssd/AppleService;)V

    return-object v0
.end method
