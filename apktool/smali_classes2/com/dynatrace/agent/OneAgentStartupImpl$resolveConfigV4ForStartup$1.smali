.class final Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;
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
    c = "com.dynatrace.agent.OneAgentStartupImpl"
    f = "OneAgentStartupImpl.kt"
    l = {
        0x91,
        0x9c
    }
    m = "resolveConfigV4ForStartup"
.end annotation


# instance fields
.field public b:Lcom/dynatrace/agent/OneAgentStartupImpl;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/dynatrace/agent/OneAgentStartupImpl;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->e:I

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$resolveConfigV4ForStartup$1;->d:Lcom/dynatrace/agent/OneAgentStartupImpl;

    invoke-static {p1, p0}, Lcom/dynatrace/agent/OneAgentStartupImpl;->d(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
