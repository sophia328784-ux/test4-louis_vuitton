.class public Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/bonjour/model/LinkPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->flags:I

    .line 120
    iput p2, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ifIndex:I

    .line 121
    iput-object p3, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->serviceName:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->regType:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/linkplay/bonjour/model/LinkPlayService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$1900(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->flags:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2000(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ifIndex:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2100(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->serviceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2200(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->regType:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2300(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->domain:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2400(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2500(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->hostName:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2600(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->port:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2700(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->txtRecord:Ljava/util/Map;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2800(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrtype:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$2900(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrclass:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3000(Lcom/linkplay/bonjour/model/LinkPlayService;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rdata:[B

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3100(Lcom/linkplay/bonjour/model/LinkPlayService;)I

    move-result v0

    iput v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ttl:I

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3200(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ip:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3300(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3400(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->security:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3500(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->version:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3600(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->time:Ljava/util/Date;

    invoke-static {p1}, Lcom/linkplay/bonjour/model/LinkPlayService;->access$3700(Lcom/linkplay/bonjour/model/LinkPlayService;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->flags:I

    return p0
.end method

.method public static synthetic access$100(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ifIndex:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrclass:I

    return p0
.end method

.method public static synthetic access$1100(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rdata:[B

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ttl:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->security:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->version:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->time:Ljava/util/Date;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->regType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->port:I

    return p0
.end method

.method public static synthetic access$800(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->txtRecord:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)I
    .locals 0

    iget p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrtype:I

    return p0
.end method


# virtual methods
.method public build()Lcom/linkplay/bonjour/model/LinkPlayService;
    .locals 1

    new-instance v0, Lcom/linkplay/bonjour/model/LinkPlayService;

    invoke-direct {v0, p0}, Lcom/linkplay/bonjour/model/LinkPlayService;-><init>(Lcom/linkplay/bonjour/model/LinkPlayService$Builder;)V

    return-object v0
.end method

.method public fullName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->fullName:Ljava/lang/String;

    return-object p0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public hostName(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->hostName:Ljava/lang/String;

    return-object p0
.end method

.method public ip(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ip:Ljava/lang/String;

    return-object p0
.end method

.method public port(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->port:I

    return-object p0
.end method

.method public rdata([B)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rdata:[B

    return-object p0
.end method

.method public rrclass(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrclass:I

    return-object p0
.end method

.method public rrtype(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->rrtype:I

    return-object p0
.end method

.method public security(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->security:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public time(Ljava/util/Date;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->time:Ljava/util/Date;

    return-object p0
.end method

.method public ttl(I)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->ttl:I

    return-object p0
.end method

.method public txtRecord(Ljava/util/Map;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linkplay/bonjour/model/LinkPlayService$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->txtRecord:Ljava/util/Map;

    return-object p0
.end method

.method public uuid(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lcom/linkplay/bonjour/model/LinkPlayService$Builder;
    .locals 0

    iput-object p1, p0, Lcom/linkplay/bonjour/model/LinkPlayService$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
