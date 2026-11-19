.class final Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;
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
        0x10c
    }
    m = "obtainDisabledContext-bz6L7rs"
.end annotation


# instance fields
.field public b:J

.field public c:Lcom/dynatrace/agent/communication/CommunicationState;

.field public d:Lcom/dynatrace/agent/storage/db/EndPointInfo;

.field public e:Lcom/dynatrace/agent/communication/RetryManager;

.field public f:Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

.field public i:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/ResponseProcessorImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->h:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->g:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->i:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/dynatrace/agent/communication/ResponseProcessorImpl$obtainDisabledContext$1;->h:Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;->h(JLcom/dynatrace/agent/communication/CommunicationState;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/RetryManager;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
