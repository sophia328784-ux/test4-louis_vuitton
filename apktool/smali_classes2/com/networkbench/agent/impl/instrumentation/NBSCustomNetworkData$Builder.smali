.class public Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bytesReceived:J

.field private bytesSent:J

.field private totalTime:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->totalTime:I

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->bytesSent:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->bytesReceived:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$1;)V

    return-object v0
.end method

.method public bytesReceived(J)Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->bytesReceived:J

    return-object p0
.end method

.method public bytesSent(J)Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->bytesSent:J

    return-object p0
.end method

.method public totalTime(I)Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->totalTime:I

    return-object p0
.end method
