.class public Lcom/linkplay/bonjour/model/LinkPlayService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    }
.end annotation


# static fields
.field private static formater:Ljava/text/SimpleDateFormat;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final flags:I

.field private fullName:Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private final ifIndex:I

.field private ip:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private port:I

.field private rdata:[B

.field private final regType:Ljava/lang/String;

.field private rrclass:I

.field private rrtype:I

.field private security:Ljava/lang/String;

.field private final serviceName:Ljava/lang/String;

.field private time:Ljava/util/Date;

.field private ttl:I

.field private txtRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linkplay/bonjour/model/LinkPlayService;->formater:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$000(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->flags:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$100(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ifIndex:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$200(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->serviceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$300(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->regType:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$400(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->domain:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$500(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->fullName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$600(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->hostName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$700(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->port:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$800(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->txtRecord:Ljava/util/Map;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$900(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrtype:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1000(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrclass:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1100(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rdata:[B

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1200(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ttl:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1300(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ip:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1400(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->uuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1500(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->security:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1600(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->version:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1700(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->time:Ljava/util/Date;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->access$1800(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1900(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->flags:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ifIndex:I

    return p0
.end method

.method public static synthetic access$2100(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->regType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->port:I

    return p0
.end method

.method public static synthetic access$2700(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->txtRecord:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrtype:I

    return p0
.end method

.method public static synthetic access$2900(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrclass:I

    return p0
.end method

.method public static synthetic access$3000(Lcom/linkplay/bonjour/model/LinkPlayService;)[B
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rdata:[B

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/linkplay/bonjour/model/LinkPlayService;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ttl:I

    return p0
.end method

.method public static synthetic access$3200(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->security:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->version:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->time:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->manufacturer:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->flags:I

    return p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public getIfIndex()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ifIndex:I

    return p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->port:I

    return p0
.end method

.method public getRdata()[B
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rdata:[B

    return-object p0
.end method

.method public getRegType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->regType:Ljava/lang/String;

    return-object p0
.end method

.method public getRrclass()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrclass:I

    return p0
.end method

.method public getRrtype()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrtype:I

    return p0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->security:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->time:Ljava/util/Date;

    return-object p0
.end method

.method public getTimeStr()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->time:Ljava/util/Date;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/linkplay/bonjour/model/LinkPlayService;->formater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTtl()I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ttl:I

    return p0
.end method

.method public getTxtRecord()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->txtRecord:Ljava/util/Map;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->version:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkPlayService{flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ifIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ifIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', regType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->regType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', domain=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', fullName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hostName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txtRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->txtRecord:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rrtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rrclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rrclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->rdata:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ttl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->time:Ljava/util/Date;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/linkplay/bonjour/model/LinkPlayService;->formater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService;->manufacturer:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lfc;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
