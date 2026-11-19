.class final Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.communication.ResponseProcessorImpl"
    f = "ResponseProcessorImpl.kt"
    l = {
        0xb6
    }
    m = "contextForValidDataRequestResponse"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

.field public c:Z

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->e:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->f:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$contextForValidDataRequestResponse$1;->e:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    invoke-static {v1, p1, p1, v0, p0}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->d(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
