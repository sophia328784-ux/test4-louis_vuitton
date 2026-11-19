.class public Lorg/teleal/cling/protocol/async/SendingSearch;
.super Lorg/teleal/cling/protocol/SendingAsync;
.source "SourceFile"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final mxSeconds:I

.field private final searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/teleal/cling/protocol/async/SendingSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;)V
    .locals 1

    .line 32
    new-instance v0, Lorg/teleal/cling/model/message/header/STAllHeader;

    invoke-direct {v0}, Lorg/teleal/cling/model/message/header/STAllHeader;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;)V
    .locals 1

    .line 31
    sget v0, Lorg/teleal/cling/model/message/header/MXHeader;->c:I

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lorg/teleal/cling/protocol/async/SendingSearch;-><init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/UpnpService;Lorg/teleal/cling/model/message/header/UpnpHeader;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/teleal/cling/protocol/SendingAsync;-><init>(Lorg/teleal/cling/UpnpService;)V

    sget-object p1, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->ST:Lorg/teleal/cling/model/message/header/UpnpHeader$Type;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/teleal/cling/model/message/header/UpnpHeader$Type;->d(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    iput p3, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->mxSeconds:I

    return-void

    :cond_0
    const-string p0, "Given search target instance is not a valid header class for type ST: "

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public execute()V
    .locals 8

    sget-object v0, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing search for target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {v2}, Lorg/teleal/cling/model/message/header/UpnpHeader;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with MX seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;

    iget-object v1, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest;-><init>(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    new-instance v1, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest299;

    iget-object v2, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequest299;-><init>(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    new-instance v2, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequestMDNS;

    iget-object v3, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getMxSeconds()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/teleal/cling/model/message/discovery/OutgoingSearchRequestMDNS;-><init>(Lorg/teleal/cling/model/message/header/UpnpHeader;I)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getBulkRepeat()I

    move-result v4

    if-ge v3, v4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    sget-object v4, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sleeping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/async/SendingSearch;->getBulkIntervalMilliseconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V

    invoke-virtual {p0}, Lorg/teleal/cling/protocol/SendingAsync;->getUpnpService()Lorg/teleal/cling/UpnpService;

    move-result-object v4

    invoke-interface {v4}, Lorg/teleal/cling/UpnpService;->c()Lorg/teleal/cling/transport/Router;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/teleal/cling/transport/Router;->send(Lorg/teleal/cling/model/message/OutgoingDatagramMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Lorg/teleal/cling/protocol/async/SendingSearch;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Search sending thread was interrupted: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UPNP-SEARCH"

    invoke-static {v5, v4}, Lcom/linkplay/log/LinkplayLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBulkIntervalMilliseconds()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public getBulkRepeat()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getMxSeconds()I
    .locals 0

    iget p0, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->mxSeconds:I

    return p0
.end method

.method public getSearchTarget()Lorg/teleal/cling/model/message/header/UpnpHeader;
    .locals 0

    iget-object p0, p0, Lorg/teleal/cling/protocol/async/SendingSearch;->searchTarget:Lorg/teleal/cling/model/message/header/UpnpHeader;

    return-object p0
.end method
