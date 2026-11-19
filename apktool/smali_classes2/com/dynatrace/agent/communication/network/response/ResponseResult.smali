.class public abstract Lcom/dynatrace/agent/communication/network/response/ResponseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;,
        Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;,
        Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;,
        Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;,
        Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult;",
        "",
        "Success",
        "TooManyRequests",
        "Retry",
        "RetryExecution",
        "UnexpectedError",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;",
        "Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
