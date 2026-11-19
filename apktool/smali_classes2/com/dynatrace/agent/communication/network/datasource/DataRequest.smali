.class public final Lcom/dynatrace/agent/communication/network/datasource/DataRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/datasource/DataRequest;",
        "",
        "Lcom/dynatrace/agent/storage/db/EndPointInfo;",
        "endPointInfo",
        "",
        "body",
        "",
        "isPriority",
        "Lcom/dynatrace/agent/communication/LocalServerData;",
        "serverData",
        "Lcom/dynatrace/agent/communication/network/model/RetryInfo;",
        "retryInfo",
        "",
        "serverId",
        "<init>",
        "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lcom/dynatrace/agent/communication/LocalServerData;

.field public final e:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

.field public final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->c:Z

    iput-object p4, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->d:Lcom/dynatrace/agent/communication/LocalServerData;

    iput-object p5, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->e:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    iput-object p6, p0, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->f:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V

    return-void
.end method
