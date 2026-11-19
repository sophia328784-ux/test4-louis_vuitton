.class final Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;
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
        0x2e,
        0x45,
        0x4a,
        0x5c
    }
    m = "selectData"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:J

.field public g:Z

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->i:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->h:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->j:I

    iget-object p1, p0, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider$selectData$1;->i:Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;->c(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
