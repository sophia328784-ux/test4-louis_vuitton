.class Lcom/github/druk/dnssd/AppleDNSSD;
.super Lcom/github/druk/dnssd/InternalDNSSD;
.source "SourceFile"


# static fields
.field public static hasAutoCallbacks:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/github/druk/dnssd/InternalDNSSD;-><init>()V

    return-void
.end method

.method public static native InitLibrary(I)I
.end method


# virtual methods
.method public native ConstructName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public native GetIfIndexForName(Ljava/lang/String;)I
.end method

.method public native GetNameForIfIndex(I)[B
.end method

.method public native ReconfirmRecord(IILjava/lang/String;II[B)V
.end method

.method public _constructFullName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/druk/dnssd/AppleDNSSD;->ConstructName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p1, Lcom/github/druk/dnssd/AppleDNSSDException;

    invoke-direct {p1, p0}, Lcom/github/druk/dnssd/AppleDNSSDException;-><init>(I)V

    throw p1
.end method

.method public _createRecordRegistrar(Lcom/github/druk/dnssd/RegisterRecordListener;)Lcom/github/druk/dnssd/DNSSDRecordRegistrar;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleRecordRegistrar;

    invoke-direct {p0, p1}, Lcom/github/druk/dnssd/AppleRecordRegistrar;-><init>(Lcom/github/druk/dnssd/RegisterRecordListener;)V

    return-object p0
.end method

.method public _enumerateDomains(IILcom/github/druk/dnssd/InternalDomainListener;)Lcom/github/druk/dnssd/DNSSDService;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleDomainEnum;

    invoke-direct {p0, p1, p2, p3}, Lcom/github/druk/dnssd/AppleDomainEnum;-><init>(IILcom/github/druk/dnssd/InternalDomainListener;)V

    return-object p0
.end method

.method public _getIfIndexForName(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/github/druk/dnssd/AppleDNSSD;->GetIfIndexForName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public _getNameForIfIndex(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/druk/dnssd/AppleDNSSD;->GetNameForIfIndex(I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public _init(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/github/druk/dnssd/AppleDNSSD;->InitLibrary(I)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Lcom/github/druk/dnssd/AppleDNSSDException;

    invoke-direct {v0, p0}, Lcom/github/druk/dnssd/AppleDNSSDException;-><init>(I)V

    invoke-virtual {v0}, Lcom/github/druk/dnssd/AppleDNSSDException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot instantiate DNSSD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public _makeBrowser(IILjava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/InternalBrowseListener;)Lcom/github/druk/dnssd/DNSSDService;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleBrowser;

    invoke-direct/range {p0 .. p5}, Lcom/github/druk/dnssd/AppleBrowser;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/InternalBrowseListener;)V

    return-object p0
.end method

.method public _queryRecord(IILjava/lang/String;IILcom/github/druk/dnssd/InternalQueryListener;)Lcom/github/druk/dnssd/DNSSDService;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleQuery;

    invoke-direct/range {p0 .. p6}, Lcom/github/druk/dnssd/AppleQuery;-><init>(IILjava/lang/String;IILcom/github/druk/dnssd/InternalQueryListener;)V

    return-object p0
.end method

.method public _reconfirmRecord(IILjava/lang/String;II[B)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/github/druk/dnssd/AppleDNSSD;->ReconfirmRecord(IILjava/lang/String;II[B)V

    return-void
.end method

.method public _register(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/github/druk/dnssd/TXTRecord;Lcom/github/druk/dnssd/InternalRegisterListener;)Lcom/github/druk/dnssd/DNSSDRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleRegistration;

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Lcom/github/druk/dnssd/TXTRecord;->getRawBytes()[B

    move-result-object p8

    goto :goto_0

    :cond_0
    const/4 p8, 0x0

    :goto_0
    invoke-direct/range {p0 .. p9}, Lcom/github/druk/dnssd/AppleRegistration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLcom/github/druk/dnssd/InternalRegisterListener;)V

    return-object p0
.end method

.method public _resolve(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/InternalResolveListener;)Lcom/github/druk/dnssd/DNSSDService;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/druk/dnssd/DNSSDException;
        }
    .end annotation

    new-instance p0, Lcom/github/druk/dnssd/AppleResolver;

    invoke-direct/range {p0 .. p6}, Lcom/github/druk/dnssd/AppleResolver;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/druk/dnssd/InternalResolveListener;)V

    return-object p0
.end method
