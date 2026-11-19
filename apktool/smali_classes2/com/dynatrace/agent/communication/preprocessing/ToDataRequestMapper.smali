.class public final Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;",
        "",
        "Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;",
        "requestBodyMapper",
        "Lcom/dynatrace/agent/communication/RetryManager;",
        "retryManager",
        "<init>",
        "(Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;Lcom/dynatrace/agent/communication/RetryManager;)V",
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
.field public final a:Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;

.field public final b:Lcom/dynatrace/agent/communication/RetryManager;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;Lcom/dynatrace/agent/communication/RetryManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;->a:Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;->b:Lcom/dynatrace/agent/communication/RetryManager;

    return-void
.end method
