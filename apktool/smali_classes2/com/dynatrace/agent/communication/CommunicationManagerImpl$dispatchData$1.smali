.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;
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
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl"
    f = "CommunicationManagerImpl.kt"
    l = {
        0xf0,
        0xf6,
        0xf8
    }
    m = "dispatchData"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

.field public c:Ljava/lang/Object;

.field public d:Lcom/dynatrace/agent/communication/network/datasource/DataRequest;

.field public e:Z

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

.field public h:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->g:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->h:I

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$dispatchData$1;->g:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-static {p1, p0}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->e(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
