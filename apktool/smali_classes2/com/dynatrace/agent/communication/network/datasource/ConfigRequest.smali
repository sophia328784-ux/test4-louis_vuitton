.class public final Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;",
        "",
        "Lcom/dynatrace/agent/storage/db/EndPointInfo;",
        "endPointInfo",
        "Lcom/dynatrace/agent/communication/LocalServerData;",
        "serverData",
        "Lcom/dynatrace/agent/communication/network/model/RetryInfo;",
        "retryInfo",
        "",
        "serverId",
        "<init>",
        "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

.field public final b:Lcom/dynatrace/agent/communication/LocalServerData;

.field public final c:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->b:Lcom/dynatrace/agent/communication/LocalServerData;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->c:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->d:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V

    return-void
.end method
