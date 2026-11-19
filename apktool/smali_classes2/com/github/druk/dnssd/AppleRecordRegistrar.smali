.class Lcom/github/druk/dnssd/AppleRecordRegistrar;
.super Lcom/github/druk/dnssd/AppleService;
.source "SourceFile"

# interfaces
.implements Lcom/github/druk/dnssd/DNSSDRecordRegistrar;


# direct methods
.method public constructor <init>(Lcom/github/druk/dnssd/RegisterRecordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/druk/dnssd/AppleService;-><init>(Lcom/github/druk/dnssd/BaseListener;)V

    invoke-virtual {p0}, Lcom/github/druk/dnssd/AppleRecordRegistrar;->CreateConnection()I

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
.method public native CreateConnection()I
.end method

.method public native RegisterRecord(IILjava/lang/String;II[BILcom/github/druk/dnssd/AppleDNSRecord;)I
.end method

.method public registerRecord(IILjava/lang/String;II[BI)Lcom/github/druk/dnssd/DNSRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance v8, Lcom/github/druk/dnssd/AppleDNSRecord;

    invoke-direct {v8, p0}, Lcom/github/druk/dnssd/AppleDNSRecord;-><init>(Lcom/github/druk/dnssd/AppleService;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/github/druk/dnssd/AppleRecordRegistrar;->RegisterRecord(IILjava/lang/String;II[BILcom/github/druk/dnssd/AppleDNSRecord;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/druk/dnssd/AppleService;->ThrowOnErr(I)V

    return-object v8
.end method
