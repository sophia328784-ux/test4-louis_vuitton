.class final Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;
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
    c = "com.dynatrace.agent.exitreason.ExitReasonProcessor"
    f = "ExitReasonProcessor.kt"
    l = {
        0x8e,
        0xaa
    }
    m = "processExitReasons"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->f:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    iget-object p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->f:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b(Ljava/util/List;Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
