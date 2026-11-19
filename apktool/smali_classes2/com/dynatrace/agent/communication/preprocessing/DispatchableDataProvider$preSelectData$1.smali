.class final Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;
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
    c = "com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider"
    f = "DispatchableDataProvider.kt"
    l = {
        0x73,
        0x74
    }
    m = "preSelectData$com_dynatrace_agent_release"
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->f:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$preSelectData$1;->f:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-virtual {v1, p1, v0, p0}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->b(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    return-object p0
.end method
