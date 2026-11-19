.class public Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;
    }
.end annotation


# instance fields
.field private bytesReceived:J

.field private bytesSent:J

.field private totalTime:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->a(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->b(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;->totalTime:I

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->c(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;->bytesSent:J

    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;->d(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;->bytesReceived:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSCustomNetworkData$Builder;)V

    return-void
.end method
